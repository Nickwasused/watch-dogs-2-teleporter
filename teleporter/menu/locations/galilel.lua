local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Galilel")

	menu:AddButton("Outside", function()
		just_tp(-1264.047852, 3043.673340, 18.010941)
	end)
	menu:AddButton("Roof", function()
		just_tp(-1296.296387, 3097.360352, 71.068314)
	end)
	menu:AddButton("Inside", function()
		Script().tp_state:LoadLayer_and_tp("sv_02_divisionx_lma_hangarfloor", -1279.329590, 3121.323730, 24.015215)
	end)

	return menu
end

table.insert(MenuItems, { "Galilel", "Teleport to Galilel Locations", Script():CacheMenu(TeleportMenu) })