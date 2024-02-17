local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Shanghaied Ship")

	menu:AddButton("Outside", function()
		just_tp(3142.633789, -1845.312012, 23.890188)
	end)
	menu:AddButton("Inside", function()
		just_tp(3119.286621, -1867.510498, 13.983264)
	end)

	return menu
end

table.insert(MenuItems, { "Shanghaied Ship [Not Working]", "Featured in Shanghaied", Script():CacheMenu(TeleportMenu) })