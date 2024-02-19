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
    ["Galilel"] = {
        ["Outside"] = {
            {},
            -1264.047852, 3043.673340, 18.010941,
            false,
            ""
        },
        ["Roof"] = {
            {},
            -1296.296387, 3097.360352, 71.068314,
            false,
            ""
        },
        ["Inside"] = {
            {"sv_02_divisionx_lma_hangarfloor"},
            -1279.329590, 3121.323730, 24.015215,
            true,
            ""
        }
    },
    ["Hacktheworld"] = {
        ["Japan"] = {
            {"s13m040_main_iop"},
            774.695374, 968.104614, 154.336700,
            true,
            "No floor collision"
        },
        ["Dublin"] = {
            {"s13m040_main_iop"},
            777.710815, 968.795288, 144.003937,
            true,
            "No wall collision"
        },
        ["Blume Data Center Bottom"] = {
            {"S13M040_Main_ServerFarm"},
            734.495972, 1023.327637, 175.005066,
            true,
            ""
        },
        ["Blume Data Center Top"] = {
            {"S13M040_Main_ServerFarm"},
            734.265137, 933.202271, 201.477875,
            true,
            ""
        }
    },
    ["Haum"] = {
        ["Haum Server Room"] = {
            {"sf_08_haumdatacenter_lma"},
            -238.007462, 176.088562, 63.054485,
            false,
            ""
        },
        ["Haum Control Room"] = {
            {"sf_08_haumdatacenter_lma"},
            -243.149017, 176.798553, 22.054327,
            false,
            ""
        }
    },
    ["Horatio House"] = {
        ["Inside"] = {
            {"oak_02_fruitvale_horatiohouse"},
            -2760.670898, 251.119873, 22.001978,
            true,
            ""
        }
    },
    ["!nvite"] = {
        ["Outside"] = {
            {},
            839.594543, 686.046143, 31.725556,
            false,
            ""
        },
        ["Inside"] = {
            {"sf_08_invite_lma"},
            875.124451, 644.192627, 32.374151,
            false,
            ""
        },
        ["Server"] = {
            {"sf_08_invite_lma"},
            867.473633, 648.186096, 26.826643,
            false,
            ""
        },
        ["Office"] = {
            {"sf_08_invite_lma"},
            865.608154, 635.059937, 55.814030,
            false,
            ""
        }
    },
    ["Movie Studio"] = {
        ["Outside"] = {
            {},
            1781.207275, -156.046768, 28.354439,
            false,
            ""
        },
        ["Inside"] = {
            {"sf_04_moviestudio_lma"},
            1814.354248, -166.817581, 27.874928,
            false,
            ""
        }
    },
    ["New Dawn"] = {
        ["Temple Outside"] = {
            {},
            1274.844482, 2783.192383, 84.500887,
            false,
            ""
        },
        ["Temple Inside (Top Floor)"] = {
            {"svsm_w_14_lma"},
            1294.563232, 2825.373047, 84.504898,
            false,
            ""
        },
        ["Temple Inside (Bottom Floor)"] = {
            {"svsm_w_14_lma"},
            1289.476563, 2814.760254, 42.529709,
            false,
            ""
        },
        ["Rehabcenter (Outside)"] = {
            {},
            2307.427246, 1811.083496, 31.696684,
            false,
            ""
        },
        ["Rehabcenter (Inside)"] = {
            {"sf_06_rehab_center_lma"},
            2338.862793, 1877.190430, 36.017680,
            false,
            ""
        },
        ["Recruitmentcenter (Outside)"] = {
            {},
            1278.031250, 1.994425, 44.458054,
            false,
            ""
        },
        ["Recruitmentcenter (Inside)"] = {
            {"sf_02_recruitment_center_lma"},
            1277.932617, -23.794327, 49.342812,
            false,
            ""
        }
    },
    ["Noodle"] = {
        ["Outside"] = {
            {},
            -641.041992, 3120.737305, 20.515034,
            false,
            ""
        },
        ["Inside"] = {
            {"sv_01_officeplex_lma_mapsroom02"},
            -811.707397, 3168.902832, 9.005063,
            false,
            ""
        }
    },
}