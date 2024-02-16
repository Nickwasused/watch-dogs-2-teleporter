local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Thruss")

	menu:AddButton("Penthouse", function()
		LoadLayer("sf_08_skyscraper_lma")
		teleport(13.167707, 253.989471, 131.002701)
	end)

	return menu
end

table.insert(MenuItems, { "Thruss", "Teleport to locations regarding Thruss.", Script():CacheMenu(TeleportMenu) })