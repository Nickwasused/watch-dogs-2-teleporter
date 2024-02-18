local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Shanghaied Ship")

	menu:AddButton("Outside", function()
		just_tp(3142.633789, -1845.312012, 23.890188)
	end)
	menu:AddButton("Inside", function()
		just_tp(3119.286621, -1867.510498, 13.983264)
	end)

	menu:AddButton("Debug", function()
		-- correct one but boundary is preventing it
		-- https://github.com/Nickwasused/watch-dogs-2/blob/18b37b718bad3d5bc25310ae1d10f51d556b6f75/game/decode/user/san_francisco/missions/worldstories/solo/s16/s16m050/s16m050.s16m050_main.debug.lua
		Script().tp_state:LoadLayer_and_tp("Barge_LMA", 3119.286621, -1867.510498, 13.983264, true)
	end)

	return menu
end

table.insert(MenuItems, { "Shanghaied Ship [Not Working]", "Featured in Shanghaied", Script():CacheMenu(TeleportMenu) })