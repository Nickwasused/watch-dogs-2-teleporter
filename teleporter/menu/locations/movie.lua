local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Movie Studio")

	menu:AddButton("Outside", function()
		just_tp(1781.207275, -156.046768, 28.354439)
	end)
	menu:AddButton("Inside", function()
		Script().tp_state:LoadLayer_and_tp("sf_04_moviestudio_lma", 1814.354248, -166.817581, 27.874928)
	end)

	return menu
end

table.insert(MenuItems, { "Movie Studio", "Teleport to the Movie Studio", Script():CacheMenu(TeleportMenu) })