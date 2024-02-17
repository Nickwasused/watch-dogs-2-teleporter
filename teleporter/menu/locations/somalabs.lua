local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Soma Rensenselabs")

	menu:AddButton("Lab", function()
		Script().tp_state:LoadLayer("sf_08_soma_rensenselabs_sas")
		Script().tp_state:LoadLayer_and_tp("sf_08_soma_rensenselabs_hma", 354.804749, 705.479004, -10.3062401)
	end)
	menu:AddButton("Lab 2", function()
		Script().tp_state:LoadLayer_and_tp("sf_08_soma_rensenselabs_hma", 308.218262, 677.031860, -11.407912)
	end)

	return menu
end

table.insert(MenuItems, { "Soma Rensenselabs", "Teleport to the Soma Rensenselabs", Script():CacheMenu(TeleportMenu) })