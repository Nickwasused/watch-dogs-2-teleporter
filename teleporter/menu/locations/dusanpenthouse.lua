local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Dusan Penthouse")

	menu:AddButton("Dusan Penthouse", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_dusanpenthouse_lma", 298.337494, 285.072327, 235.018411)
	end)

	return menu
end

table.insert(MenuItems, { "Dusan Penthouse", "Teleport to Dusans Penthouse", Script():CacheMenu(TeleportMenu) })