local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Coit Tower")

	menu:AddButton("top", function()
		just_tp(652.669189, -566.513428, 133.730072)
	end)
	
	menu:AddButton("bottom", function()
		just_tp(650.781433, -598.100098, 83.507164)
	end)

	return menu
end

table.insert(MenuItems, { "Coit Tower", "Teleport to the Coit Tower", Script():CacheMenu(TeleportMenu) })