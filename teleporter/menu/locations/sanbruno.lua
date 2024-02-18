local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("San Bruno Datacenter")

	menu:AddButton("Wall Breach", function()
		Script().tp_state:LoadLayer_and_tp("sf_06_serverfarms_lma", 1034.674316, 2153.658203, 163.877975, true)
	end)

    menu:AddButton("Inside", function()
		Script().tp_state:LoadLayer_and_tp("sf_06_serverfarms_lma", 1043.431641, 2144.879395, 155.921097, true)
	end)

	return menu
end

table.insert(MenuItems, { "San Bruno Datacenter", "The one that Wrench destroys", Script():CacheMenu(TeleportMenu) })