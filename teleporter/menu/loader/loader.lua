local function GetFelonyTypeID(felonyTypeName)
	return Fractions[felonyTypeName]
end

function LoadLayer(name)
	LoadLMALayer(name, "0", 1, function()
	end, "")
end

function teleport(x, y, z)
	ScriptHook.Teleport(x, y, z)
	timer.Simple(2, function()
		ScriptHook.Teleport(x, y, z)
	end)
end

function ClearWanted()
	local selectedFraction = "Police"
	FelonyEndChaseOrSearch(GetLocalPlayerEntityId(), GetFelonyTypeID(selectedFraction), 1)
	ScriptHook.ClearHeatLevel(GetFelonyTypeID(selectedFraction))
end