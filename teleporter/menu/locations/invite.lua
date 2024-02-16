local function InviteTeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("!nvite")

	menu:AddButton("Outside", function()
		just_tp(839.594543, 686.046143, 31.725556)
	end)
	menu:AddButton("Inside", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_invite_lma", 875.124451, 644.192627, 32.374151)
	end)
	menu:AddButton("Server", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_invite_lma", 867.473633, 648.186096, 26.826643)
	end)
	menu:AddButton("Office", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_invite_lma", 865.608154, 635.059937, 55.814030)
	end)

	return menu
end

table.insert(MenuItems, { "!nvite", "Teleport to !nvite Locations", Script():CacheMenu(InviteTeleportMenu) })