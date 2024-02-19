-- DO NOT SET is_mission to true WHEN DEFINING MULTIPLE LAYERS!

DATA = {
    ["Alcatraz"] = {
        ["Teleport to Alcatraz"] = {
            "",
            237.084930, -1945.961426, 37.011242,
            false,
            ""
        },
        ["Teleport to Alcatraz (Inside)"] = {
            "",
            272.934814, -1981.156372, 37.099851,
            false,
            ""
        }
    },
    ["Blume"] = {
        ["Blume CTOS Server Farm (Outside)"] = {
            {},
            -613.188721, -1358.770752, 16.090664,
            false,
            "Intro Mission Location"
        },
        ["Blume CTOS Server Farm (Serverroom)"] = {
            {"sf_09_ctos_data_center_lma"},
            -633.506470, -1389.237549, -2.054199,
            false,
            "Intro Mission Location"
        },
        ["Blume Campus (Outside)"] = {
            {},
            729.503357, 1729.959229, 60.518436,
            false,
            ""
        },
        ["Blume Campus (Inside)"] = {
            {"sf_08_blume_campus_sas", "sf_08_blume_campus_hma"},
            738.705383, 1736.158081, 61.004967,
            false,
            ""
        },
        ["Blume Campus (Serverroom)"] = {
            {"sf_08_blume_campus_sas", "sf_08_blume_campus_hma"},
            854.931946, 1759.926758, 27.640955,
            false,
            "This is the Air Gap computer"
        }
    },
    ["Burningman"] = {
        ["Teleport to Burningman"] = {
            {"oak_05_burningman_lma"},
            -2615.465820, -2793.795410, 20.495592,
            true,
            ""
        }
    },
    ["Ceo House"] = {
        ["Outside"] = {
            {},
            985.569519, 2621.929932, 70.018988,
            false,
            ""
        },
        ["Inside"] = {
            {"L36M020_Main_IOP"},
            1001.001343, 2620.836426, 59.609257,
            true,
            "Gene Carcani's House"
        }
    },
    ["Coit Tower"] = {
        ["top"] = {
            {},
            652.669189, -566.513428, 133.730072,
            false,
            ""
        },
        ["bottom"] = {
            {},
            650.781433, -598.100098, 83.507164,
            false,
            ""
        }
    },
    ["Dedsec HQ"] = {
        ["San Francisco HQ | Outside"] = {
            {},
            809.033081, 921.227831, 33.60579,
            false,
            ""
        },
        ["San Francisco HQ | Inside"] = {
            {},
            809.969238, 917.381348, 27.271181,
            false,
            ""
        },
        ["Oakland HQ | Outside"] = {
            {},
            -2663.499512, -437.213501, 21.449339,
            false,
            ""
        },
        ["Oakland HQ | Inside"] = {
            {},
            -2653.000488, -449.066010, 21.549318,
            false,
            ""
        },
        ["Silicon Valley HQ | Outside"] = {
            {},
            -257.184631, 3287.341797, 22.107433,
            false,
            ""
        },
        ["Silicon Valley HQ | Inside"] = {
            {},
            -257.463989, 3284.399902, 22.055016,
            false,
            ""
        },
        ["Marin HQ | Outside"] = {
            {},
            1336.049805, -2625.875977, 27.988195,
            false,
            ""
        },
        ["Marin HQ | Inside"] = {
            -- we just need to load this one
            {"mar_01_hackerspace_hma"},
            1364.879883, -2667.060059, 14.205064,
            false,
            ""
        }
    },
    ["Dusan Penthouse"] = {
        ["Dusan Penthouse"] = {
            {"sf_08_dusanpenthouse_lma"},
            298.337494, 285.072327, 235.018411,
            false,
            "Featured at the end of the Game."
        }
    },
    ["FBI Tower"] = {
        ["Inside (Bottom)"] = {
            {"oak_01_civiccenter_dellumtower_sas"},
            -2089.043457, -985.501709, 19.986208,
            true,
            ""
        },
        ["Inside (Top)"] = {
            {"oak_01_civiccenter_dellumtower_hma"},
            -2059.158447, -972.452515, 89.286774,
            true,
            ""
        }
    },
    ["Fort Point"] = {
        ["Outside"] = {
            {},
            2119.341797, -1053.109009, 16.557859,
            false,
            ""
        },
        ["Inside"] = {
            {},
            2155.328857, -1080.221436, 16.564962,
            false,
            ""
        }
    },
}