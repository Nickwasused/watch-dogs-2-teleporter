local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Hacktheworld")

	menu:AddButton("Earth View (Freecam)", function() just_tp(779.580750, 967.506226, 140.241776) end)

	menu:AddButton("Japan", "No floor collision", function()
		Script().tp_state:LoadLayer_and_tp("s13m040_main_iop", 774.695374, 968.104614, 154.336700, true)
	end)

	menu:AddButton("Dublin", "No wall collision", function()
		Script().tp_state:LoadLayer_and_tp("s13m040_main_iop", 777.710815, 968.795288, 144.003937, true)
	end)

	menu:AddButton("Blume Data Center Bottom", function()
		Script().tp_state:LoadLayer_and_tp("S13M040_Main_ServerFarm", 734.495972, 1023.327637, 175.005066, true)
	end)
	menu:AddButton("Blume Data Center Top", function()
		Script().tp_state:LoadLayer_and_tp("S13M040_Main_ServerFarm", 734.265137, 933.202271, 201.477875, true)
	end)

	return menu
end

table.insert(MenuItems, { "Hacktheworld", "Teleport to Hacktheworld", Script():CacheMenu(TeleportMenu) })