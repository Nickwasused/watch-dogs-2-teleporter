local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Gene Carcani's House")

	menu:AddButton("Outside", function()
		just_tp(985.569519, 2621.929932, 70.018988)
	end)
	menu:AddButton("Inside", function()
		Script().tp_state:LoadLayer_and_tp("L36M020_Main_IOP", 1001.001343, 2620.836426, 59.609257, true)
	end)

	return menu
end

table.insert(MenuItems, { "Ceo House", "Teleport to the Ceo House", Script():CacheMenu(TeleportMenu) })