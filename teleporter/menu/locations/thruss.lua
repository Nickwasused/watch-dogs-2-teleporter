local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Thruss")

	menu:AddButton("Penthouse", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_skyscraper_lma", 13.167707, 253.989471, 131.002701)
	end)

	return menu
end

table.insert(MenuItems, { "Thruss", "Teleport to locations regarding Thruss.", Script():CacheMenu(TeleportMenu) })