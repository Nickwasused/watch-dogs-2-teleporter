local function setweather()
	PushEnvironmentWeatherOverride(WeatherIDs["SanFran.Clear.Fog_Dense.MI_BurningMan_1"], 1)
end

local function TeleportMenu()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Burningman")

	menu:AddButton("Teleport to Burningman", function()
		Script().tp_state:LoadLayer_and_tp("oak_05_burningman_lma", -2615.465820, -2793.795410, 20.495592)
		SetTimeOfDayHourAndMinute(tonumber(0), tonumber(0))
	end)
	menu:AddButton("Set Burningman Weather", function()
		setweather()
	end)

	return menu
end

table.insert(MenuItems, { "Burningman", "Teleport to Burningman", Script():CacheMenu(TeleportMenu) })