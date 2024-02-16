local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Yacht")

	menu:AddButton("Inside", function()
		just_tp(1319.467529, -1670.586914, 22.069139)
	end)
	menu:AddButton("Outside", function()
		just_tp(1320.583130, -1727.896973, 20.662670)
	end)

	return menu
end

table.insert(MenuItems, { "Yacht", "Teleport to the Yacht", Script():CacheMenu(TeleportMenu) })