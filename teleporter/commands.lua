local script = Script()

-- teleport
local function teleport(x, y, z)
    print("teleporting to " .. x .. " " .. y .. " ".. z)
	SetEntityPosition(GetLocalPlayerEntityId(), x, y, z)
end

-- mission layers
local function mission_load(layer)
    LoadMissionLayer2("0", function() end, "", layer)
end

local function mission_unload(layer)
    UnloadMissionLayer2("0", function() end, "", layer)
end

-- lma layers
local function lma_load(layer)
    LoadLMALayer(layer, "0", 0, function() end, "")
end

local function lma_unload(layer)
    UnloadLMALayer(layer, function() end, "")
end

-- Register commands
local cmd_tp = ScriptHook.RegisterCommand("tp", teleport)
cmd_tp:AddArgument("x", true, CommandArgumentType.Float)
cmd_tp:AddArgument("y", true, CommandArgumentType.Float)
cmd_tp:AddArgument("z", true, CommandArgumentType.Float)
cmd_tp:SetDescription("Teleport to x, y, z cords")

local cmd_mission_load = ScriptHook.RegisterCommand("mission-load", mission_load)
cmd_mission_load:AddArgument("layer", true, CommandArgumentType.String)
cmd_mission_load:SetDescription("Load a mission layer")

local cmd_mission_unload = ScriptHook.RegisterCommand("mission-unload", mission_unload)
cmd_mission_unload:AddArgument("layer", true, CommandArgumentType.String)
cmd_mission_unload:SetDescription("Unload a mission layer")

local cmd_lma_load = ScriptHook.RegisterCommand("lma-load", lma_load)
cmd_lma_load:AddArgument("layer", true, CommandArgumentType.String)
cmd_lma_load:SetDescription("Load a LMA Layer")

local cmd_lma_unload = ScriptHook.RegisterCommand("lma-unload", lma_unload)
cmd_lma_unload:AddArgument("layer", true, CommandArgumentType.String)
cmd_lma_unload:SetDescription("Unload a LMA Layer")