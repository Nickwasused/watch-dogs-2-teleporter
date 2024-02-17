local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Tidis")

	menu:AddButton("Outside", function()
		just_tp(-265.230072, 2173.715576, 20.529942)
	end)
	menu:AddButton("Inside", function()
		Script().tp_state:LoadLayer_and_tp("sv_02_securityplex_lma_wrenchjr01", -285.193970, 2127.669922, 26.534054)
	end)
	menu:AddButton("Robot", function()
		Script().tp_state:LoadLayer_and_tp("sv_02_securityplex_lma_wrenchjr01", -382.132874, 2027.110474, 13.549955)
	end)
	menu:AddButton("Serverroom", function()
		Script().tp_state:LoadLayer_and_tp("sv_02_securityplex_lma_wrenchjr01", -331.425415, 2090.673340, 13.519176)
	end)
	menu:AddButton("Prototype Test Arena", function()
		Script().tp_state:LoadLayer_and_tp("sv_02_securityplex_lma_protolab01", -444.528809, 2209.663086, 14.492650)
	end)
	menu:AddButton("Prototype Test Arena Entrance", function()
		Script().tp_state:LoadLayer_and_tp("sv_02_securityplex_lma_protolab01", -448.882202, 2140.413330, 15.505307)
	end)
	menu:AddButton("Prototype Test Generator Room", function()
		Script().tp_state:LoadLayer_and_tp("sv_02_securityplex_lma_protolab01", -449.645660, 2228.059082, 44.9474953)
	end)


	return menu
end

table.insert(MenuItems, { "Tidis", "Teleport to Tidis Locations", Script():CacheMenu(TeleportMenu) })