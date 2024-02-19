local script = Script()
-- loader
include("/menu/loader/loader.lua")

function script:OnLoad()
    local menu = UI.SimpleMenu()
    menu:AddSearch("Search...")

    menu:SetTitle("Teleporter | Nickwasused")

    local DATA = {
		["Blume"] = {
			["Blume CTOS Server Farm (Outside)"] = {
                "",
                -613.188721, -1358.770752, 16.090664,
                false,
                ""
            },
            ["Blume CTOS Server Farm (Serverroom)"] = {
                "sf_09_ctos_data_center_lma",
                -633.506470, -1389.237549, -2.054199,
                false,
                ""
            }
		}
	}


    -- key: Category name e.g. Blume
    -- value: the data inside
    for key, value in pairsByKeys(DATA) do
        menu:AddButton(key, function()
            local tmp_menu = UI.SimpleMenu()
            tmp_menu:SetTitle(key)

            -- key2: The item name e.g. Blume CTOS Server Farm (Outside)
            -- value2: the data: lma layer, x, y, z, is_mission and description
            for key2, value2 in pairsByKeys(value) do
                local layer, x, y, z, is_mission, description = unpack(value2)
                if layer == "" then
                    tmp_menu:AddButton(key2, description, function()
                        just_tp(x, y, z)
                    end)
                else
                    tmp_menu:AddButton(key2, description, function()
                        Script().tp_state:LoadLayer_and_tp(layer, x, y, z, is_mission)
                    end)
                end
            end
            return tmp_menu
        end)
	end

    ScriptHook.RegisterKeyHandler("menu", function()
        menu:Toggle()
    end)
end