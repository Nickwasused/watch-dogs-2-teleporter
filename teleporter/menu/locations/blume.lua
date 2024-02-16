local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Blume")

	menu:AddButton("Blume CTOS Server Farm (Outside)", function()
		just_tp(-613.188721, -1358.770752, 16.090664)
	end)
	menu:AddButton("Blume CTOS Server Farm (Serverroom)", function()
		Script().tp_state:LoadLayer_and_tp("sf_09_ctos_data_center_lma", -633.506470, -1389.237549, -2.054199)
	end)
	menu:AddButton("Blume Campus (Outside)", function()
		just_tp(729.503357, 1729.959229, 60.518436)
	end)
	menu:AddButton("Blume Campus (Inside)", function()
		Script().tp_state:LoadLayer("sf_08_blume_campus_sas")
		Script().tp_state:LoadLayer_and_tp("sf_08_blume_campus_hma", 738.705383, 1736.158081, 61.004967)
	end)
	menu:AddButton("Blume Campus (Serverroom)", function()
		Script().tp_state:LoadLayer("sf_08_blume_campus_sas")
		Script().tp_state:LoadLayer_and_tp("sf_08_blume_campus_hma", 854.931946, 1759.926758, 27.640955)
	end)

	return menu
end

table.insert(MenuItems, { "Blume", "Teleport to Blume Locations", Script():CacheMenu(TeleportMenu) })