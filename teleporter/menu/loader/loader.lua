local tp_state = {
	target_cord_x = nil,
	target_cord_y = nil,
	target_cord_z = nil
}
Script().tp_state = tp_state
tp_state._type = tp_state


-- Init/Shutdown
function tp_state:Init()
	local scs = CScriptCallbackSystem_GetInstance()
	--self.EventIDs.OnDie = scs:RegisterMissionEventCallback(GetLocalPlayerEntityId(), self, "OnDie", "Die", -1)
end

function tp_state:Shutdown()
	local scs = CScriptCallbackSystem_GetInstance()
	--scs:RemoveCallback(GetLocalPlayerEntityId(), self.EventIDs.OnDie)
end

-- just load the layer. Commonly used when 2 layers are needed for one teleport
function tp_state:LoadLayer(name)
	LoadLMALayer(name, "0", 1, function() end, "")
end

-- load a lma layer then use the callback to on_loaded to do the teleport
-- this should fix being stuck in the ground
function tp_state:LoadLayer_and_tp(name, x, y, z)
	ScriptHook.ShowNotification("loading ...")
	Script().tp_state.target_cord_x = x
	Script().tp_state.target_cord_y = y
	Script().tp_state.target_cord_z = z
	LoadLMALayer(name, "0", 1, tp_state, "on_loaded")
	Script().tp_state.last_lma_layer = name
end

function tp_state:on_loaded()
	if Script().tp_state.target_cord_x == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	elseif Script().tp_state.target_cord_y == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	elseif Script().tp_state.target_cord_z == nil then
		ScriptHook.ShowNotification("There was an error!", 15)
	else
		ScriptHook.Teleport(Script().tp_state.target_cord_x, Script().tp_state.target_cord_y, Script().tp_state.target_cord_z)
		ClearWanted()
		ScriptHook.ShowNotification("done")
	end
end

function just_tp(x, y, z)
	ScriptHook.Teleport(x, y, z)
end

local function GetFelonyTypeID(felonyTypeName)
	return Fractions[felonyTypeName]
end

local function ClearWanted()
	local selectedFraction = "Police"
	FelonyEndChaseOrSearch(GetLocalPlayerEntityId(), GetFelonyTypeID(selectedFraction), 1)
	ScriptHook.ClearHeatLevel(GetFelonyTypeID(selectedFraction))
end