local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Dedsec HQ")

	menu:AddButton("San Francisco HQ | Outside", function()
		just_tp(809.033081, 921.227831, 33.60579)
	end)
	menu:AddButton("San Francisco HQ | Inside", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_mission_central_hma_hackerspace", 809.969238, 917.381348, 27.271181)
	end)

	menu:AddButton("Oakland HQ | Outside", function()
		just_tp(-2663.499512, -437.213501, 21.449339)
	end)
	menu:AddButton("Oakland HQ | Inside", function()
		just_tp(-2653.000488, -449.066010, 21.549318)
	end)

	menu:AddButton("Silicon Valley HQ | Outside", function()
		just_tp(-257.184631, 3287.341797, 22.107433)
	end)
	menu:AddButton("Silicon Valley HQ | Inside", function()
		just_tp(-257.463989, 3284.399902, 22.055016)
	end)

	menu:AddButton("Marin HQ | Outside", function()
		just_tp(1336.049805, -2625.875977, 27.988195)
	end)
	menu:AddButton("Marin HQ | Inside", function()
		Script().tp_state:LoadLayer_and_tp("mar_01_hackerspace_hma", 1364.879883, -2667.060059, 14.205064)
	end)

	return menu
end

table.insert(MenuItems, { "Dedsec HQ", "Teleport to the Dedsec HQ", Script():CacheMenu(TeleportMenu) })