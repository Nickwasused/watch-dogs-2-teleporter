local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Haum")

	menu:AddButton("Haum Server Room", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_haumdatacenter_lma", -238.007462, 176.088562, 63.054485)
	end)
	
	menu:AddButton("Haum Control Room", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_haumdatacenter_lma", -243.149017, 176.798553, 22.054327)
	end)

	return menu
end

table.insert(MenuItems, { "Haum", "Teleport to Haum Locations", Script():CacheMenu(TeleportMenu) })