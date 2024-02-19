local script = Script()

function script:CacheMenu(menu_callback)
	local menu_cached = nil
	return function()
		menu_cached = menu_cached or menu_callback()
		return menu_cached
	end
end

function script:OnLoad()
	-- Menu
	local menu = UI.SimpleMenu()
	menu:SetTitle("Change character | Nickwasused")

	-- Items
	local SKINS = {
		["Sitara"] = {
			"HumanConfig.9223372049751415851",
			"dialogactors.dialogactors.sitara"
		},
		["Wrench"] = {
			"HumanConfig.9223372050789760492",
			"dialogactors.dialogactors.wrench"
		},
		["Reset"] = {
			"",
			""
		}
	}

	for key, value in pairsByKeys(SKINS) do
		local config, voice = unpack(value)

		menu:AddButton(key, Script():CacheMenu(function()
			ChangePlayerGkModelFromHumanConfigAndVoiceActor(config, voice)
		end))
	end

	-- Key Bind
	ScriptHook.RegisterKeyHandler("menu", function()
		menu:Toggle()
	end)
end