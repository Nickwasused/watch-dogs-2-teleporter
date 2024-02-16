local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Sutro Tower")

	menu:AddButton("Inside", function()
		Script().tp_state:LoadLayer_and_tp("sf_06_sutro_tower_lma", 1289.464233, 1512.924561, 168.296631)
	end)
	
	menu:AddButton("Tower Top", function()
		just_tp(1318.044434, 1498.595459, 284.284180)
	end)

	return menu
end

table.insert(MenuItems, { "Sutro Tower", "Teleport to the Sutro Tower", Script():CacheMenu(TeleportMenu) })