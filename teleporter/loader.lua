local script = Script()

local tp_state = {
	target_cords = { nil, nil, nil },
	loaded_layers = {},
	current_index = 1, -- great lua
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
	table.insert(script.tp_state.loaded_layers, { name, "lma" })
end

-- load a lma layer then use the callback to on_loaded to do the teleport
-- this should fix being stuck in the ground
-- use mssion bool to load a layer that is specific for a mission like "S13M040_Main_ServerFarm"
function tp_state:LoadLayer_and_tp(name, x, y, z, mission)
	print(dump(script.tp_state.loaded_layers))
	ScriptHook.ShowNotification("loading " .. name)
	script.tp_state.target_cords = { x, y, z }

	if mission then
		script.tp_state.current_mission = name
		LoadMissionLayer2("0", tp_state, "on_loaded", name)
		table.insert(script.tp_state.loaded_layers, { name, "mission" })
	else
		script.tp_state.current_mission = nil
		LoadLMALayer(name, "0", 1, tp_state, "on_loaded")
		table.insert(script.tp_state.loaded_layers, { name, "lma" })
	end
end

-- teleport the player after the layer has loaded
function tp_state:on_loaded()
	if script.tp_state.target_cords[1] == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	elseif script.tp_state.target_cords[2] == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	elseif script.tp_state.target_cords[3] == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	else
		-- teleport
		SetEntityPosition(GetLocalPlayerEntityId(), script.tp_state.target_cords[1], script.tp_state.target_cords[2], script.tp_state.target_cords[3])
		-- unload the last loaded mission
		script.tp_state:unload_last_mission()
	end
end

function dump(o)
	if type(o) == 'table' then
	   local s = '{ '
	   for k,v in pairs(o) do
		  if type(k) ~= 'number' then k = '"'..k..'"' end
		  s = s .. '['..k..'] = ' .. dump(v) .. ','
	   end
	   return s .. '} '
	else
	   return tostring(o)
	end
 end
 

-- unload the last loaded mission
function tp_state:unload_last_mission()
	if tablelength(script.tp_state.loaded_layers) > 2 then
		local tmp_layer, layer_type = unpack(script.tp_state.loaded_layers[1])
		print("unloading " .. tmp_layer)
		if layer_type == "mission" then
			UnloadMissionLayer2("0", tp_state, "", tmp_layer)
		elseif layer_type == "lma" then
			UnloadLMALayer(tmp_layer, tp_state, "")
		else
			print("unknown layer type " .. layer_type)
		end
		table.remove(script.tp_state.loaded_layers, 1)
	end
end


function just_tp(x, y, z)
	SetEntityPosition(GetLocalPlayerEntityId(), x, y, z)
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
	-- set this to bypass unload check
	script.tp_state.current_mission = "nickwasused"
	script.tp_state:unload_last_mission()
end