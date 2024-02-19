local script = Script()

local tp_state = {
	target_cord_x = nil,
	target_cord_y = nil,
	target_cord_z = nil,
	last_mission = nil
}
script.tp_state = tp_state
tp_state._type = tp_state


-- Init/Shutdown
function tp_state:Init()
	local scs = CScriptCallbackSystem_GetInstance()
end

function tp_state:Shutdown()
	local scs = CScriptCallbackSystem_GetInstance()
end

-- just load the layer. Commonly used when 2 layers are needed for one teleport
function tp_state:LoadLayer(name)
	ScriptHook.ShowNotification("loading " .. name)
	LoadLMALayer(name, "0", 1, function() end, "")
end

-- load a lma layer then use the callback to on_loaded to do the teleport
-- this should fix being stuck in the ground
-- use mssion bool to load a layer that is specific for a mission like "S13M040_Main_ServerFarm"
function tp_state:LoadLayer_and_tp(name, x, y, z, mission)
	print(name .. " " .. x .. " " .. y .. " " .. z .. " ")
	ScriptHook.ShowNotification("loading " .. name)
	script.tp_state.target_cord_x = x
	script.tp_state.target_cord_y = y
	script.tp_state.target_cord_z = z

	if mission then
		LoadMissionLayer2("0", tp_state, "on_loaded", name)
		script.tp_state.last_mission = name
	else
		LoadLMALayer(name, "0", 1, tp_state, "on_loaded")
	end

	if script.tp_state.last_mission == name then
		print("not unloading because tp point is in the same layer")
	else
		script.tp_state:unload_last_mission()
	end
end

-- teleport the player after the layer has loaded
function tp_state:on_loaded()
	if script.tp_state.target_cord_x == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	elseif script.tp_state.target_cord_y == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	elseif script.tp_state.target_cord_z == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	else
		-- ScriptHook.Teleport(script.tp_state.target_cord_x, script.tp_state.target_cord_y, script.tp_state.target_cord_z)
		SetEntityPosition(GetLocalPlayerEntityId(), script.tp_state.target_cord_x, script.tp_state.target_cord_y, script.tp_state.target_cord_z)
		ClearWanted()
		ScriptHook.ShowNotification("done")
	end
end

-- unload the last loaded mission
function tp_state:unload_last_mission()
	local last_mission = script.tp_state.last_mission
	if last_mission == nil then
		print("nothing to unload")
	else
		print("unloading " .. last_mission)
		ScriptHook.ShowNotification("unloading " .. last_mission)
		UnloadMissionLayer2("0", tp_state, "", last_mission)
		script.tp_state.last_mission = nil
	end
end

function just_tp(x, y, z)
	ScriptHook.Teleport(x, y, z)
	script.tp_state:unload_last_mission()
end

local function GetFelonyTypeID(felonyTypeName)
	return Fractions[felonyTypeName]
end

local function ClearWanted()
	local selectedFraction = "Police"
	FelonyEndChaseOrSearch(GetLocalPlayerEntityId(), GetFelonyTypeID(selectedFraction), 1)
	ScriptHook.ClearHeatLevel(GetFelonyTypeID(selectedFraction))
end

-- unload the last loaded mission layer on script unload
function script:OnUnload()
	script.tp_state:unload_last_mission()
end