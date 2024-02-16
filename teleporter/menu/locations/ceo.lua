local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Gene Carcani's House")

	menu:AddButton("Outside", function()
		just_tp(985.569519, 2621.929932, 70.018988)
	end)
	menu:AddButton("Inside", function()
		Script().tp_state:LoadLayer_and_tp("sf_06_ceohouse_lma", -2615.465820, -2793.795410, 20.495592)
	end)

	return menu
end

table.insert(MenuItems, { "Ceo House [Not Working]", "Teleport to the Ceo House", Script():CacheMenu(TeleportMenu) })