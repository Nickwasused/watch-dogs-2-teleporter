local script = Script()

local tp_state = {
	target_cord_x = nil,
	target_cord_y = nil,
	target_cord_z = nil
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
	script.tp_state.new_mission = name
	ScriptHook.ShowNotification("loading " .. name)
	script.tp_state.target_cord_x = x
	script.tp_state.target_cord_y = y
	script.tp_state.target_cord_z = z

	if mission then
		LoadMissionLayer2("0", tp_state, "on_loaded", name)
	else
		LoadLMALayer(name, "0", 1, tp_state, "on_loaded")
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
		SetEntityPosition(GetLocalPlayerEntityId(), script.tp_state.target_cord_x, script.tp_state.target_cord_y, script.tp_state.target_cord_z)
	end
end

function just_tp(x, y, z)
	SetEntityPosition(GetLocalPlayerEntityId(), x, y, z)
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

end