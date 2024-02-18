local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Hacktheworld")

	menu:AddButton("Earth View (Freecam)", function()
		just_tp(779.580750, 967.506226, 140.241776)
	end)
	menu:AddButton("Dublin", function()
		just_tp(779.581482, 967.506409, 140.241867)
	end)
	menu:AddButton("Blume Data Center Bottom", function()
		Script().tp_state:LoadLayer_and_tp("S13M040_Main_ServerFarm", 734.495972, 1023.327637, 175.005066, true)
	end)
	menu:AddButton("Blume Data Center Top", function()
		Script().tp_state:LoadLayer_and_tp("S13M040_Main_ServerFarm", 734.265137, 933.202271, 201.477875, true)
	end)

	return menu
end

table.insert(MenuItems, { "Hacktheworld [Not Working]", "Teleport to Hacktheworld", Script():CacheMenu(TeleportMenu) })