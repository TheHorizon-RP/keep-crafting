Config = Config or {}

Config.menu = 'qb-menu' -- keep-menu (recommended) / qb-menu

Config.model_loading = {
     timeout = 1500, --ms
     dealy = 50, --ms
}

Config.categories = {
     ['misc'] = {
          key = 'misc',
          label = 'Misc',
          icon = 'fa-solid fa-tags',
          jobs = {},
     },
     ['weapons'] = {
          key = 'weapons',
          label = 'Weapons',
          icon = 'fa-solid fa-gun',
          jobs = {},
          sub_categories = {
               ['pistol'] = {
                    label = 'Pistol',
               },
               ['smg'] = {
                    label = 'SMG',
               },
          }
     },
     ['medical'] = {
          key = 'medical',
          label = 'Medical',
          icon = 'fa-solid fa-hand-holding-medical',
          jobs = {}
     }
}

Config.permanent_items = {
     'wrench'
}

local misc_recipe = {
     ['repairkit'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Repair kit',
               -- icon = 'fa-solid fa-gun',
               object = {
                    name = 'v_ind_cs_toolbox4', -- <-- this model can fail to load
                    rotation = vector3(45.0, 0.0, -45.0)
               },
               image = 'repairkit', -- use inventory's images
               level = 40,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 20,
                    ["steel"] = 25,
               },
               exp_per_craft = 20
          }
     },
     ['radio'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Radio',
               image = 'radio', -- use inventory's images
               object = {
                    name = 'v_serv_radio',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 0,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["steel"] = 5,
                    ["plastic"] = 5,
               },
               exp_per_craft = 5
          }
     },
     ['lockpick'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Lockpick',
               image = 'lockpick', -- use inventory's images
               object = {
                    name = 'prop_cs_padlock',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 0,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },

          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["steel"] = 20,
                    ["rubber"] = 20,
               },
               exp_per_craft = 5
          }
     },
}

local medial = {
     ['bandage'] = {
          categories = {
               main = 'medical',
          },
          item_settings = {
               label = 'Bandage',
               image = 'bandage', -- use inventory's images
               level = 125,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },
               -- gang = {
               --      allowed_list = {},
               --      allowed_grades = {}
               -- }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 3,
               materials = {
                    ["plastic"] = 1,
               },
               exp_per_craft = 5
          }
     },
}

local weapons_recipe = {
     ['pistol_ammo'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Pistol ammo',
               image = 'pistol_ammo', -- use inventory's images
               object = {
                    name = 'prop_ld_ammo_pack_01',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 150,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 30,
               materials = {
                    ["steel"] = 30,
               },
               exp_per_craft = 5
          }
     },
     ['weapon_pistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Walther P99',
               image = 'weapon_pistol', -- use inventory's images
               object = {
                    name = 'w_pi_pistol50',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 150,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["aluminum"] = 80,
                    ["steel"] = 70,
                    ["rubber"] = 30,
               },
               exp_per_craft = 30
          }
     },
     ['weapon_combatpistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Combat Pistol',
               image = 'weapon_combatpistol', -- use inventory's images
               object = {
                    name = 'w_pi_combatpistol',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["aluminum"] = 100,
                    ["steel"] = 90,
                    ["rubber"] = 50,
               },
               exp_per_craft = 40
          }
     },
     ['weapon_appistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'AP Pistol',
               image = 'weapon_appistol', -- use inventory's images
               object = {
                    name = 'w_pi_appistol',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 500,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["aluminum"] = 130,
                    ["steel"] = 120,
                    ["rubber"] = 70,
               },
               exp_per_craft = 50
          }
     },
     ['pistol_suppressor'] = {
          categories = {
               sub = 'smg',
          },
          item_settings = {
               label = 'Pistol suppressor',
               image = 'pistol_suppressor', -- use inventory's images
               object = {
                    name = 'w_at_ar_supp_02',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 0,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 50,
                    ["steel"] = 60,
                    ["rubber"] = 30,
               },
               exp_per_craft = 5
          }
     },
}

Config.workbench_default_model = 'gr_prop_gr_bench_01b'

Config.workbenches = {
     -- items
     {
          table_model = "gr_prop_gr_bench_04b",
          coords = vector3(1346.55, 4391.04, 43.36),
          item_show_case_offset = vector3(0.0, 0.0, 1.3),
          rotation = vector3(0.0, 0.0, 350),
          -- just use either job or gang using both at same time won't work.
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          -- gang = {
          --      allowed_list = {},
          --      allowed_grades = {}
          -- },
          categories = { Config.categories.misc, Config.categories.medical },
          recipes = { misc_recipe, medial },
          radius = 3.0
     },
     {
          table_model = "imp_prop_impexp_mechbench",
          coords = vector3(2355.84, 3118.2, 47.2),
          item_show_case_offset = vector3(0.0, 0.0, 1.3),
          rotation = vector3(0.0, 0.0, -10),
          -- just use either job or gang using both at same time won't work.
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          -- gang = {
          --      allowed_list = {},
          --      allowed_grades = {}
          -- },
          categories = { Config.categories.misc, Config.categories.medical },
          recipes = { misc_recipe, medial },
          radius = 3.0
     },
     -- gun
     {
          table_model = "gr_prop_gr_bench_04b",
          coords = vector3(-2166.63, 5196.04, 15.9),
          item_show_case_offset = vector3(0.0, 0.0, 1.3),
          rotation = vector3(0.0, 0.0, 190),
          -- just use either job or gang using both at same time won't work.
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          -- gang = {
          --      allowed_list = {},
          --      allowed_grades = {}
          -- },
          categories = { Config.categories.misc, Config.categories.medical },
          recipes = { misc_recipe, medial },
          radius = 3.0
     },
     {
          table_model = "gr_prop_gr_bench_04b",
          coords = vector3(-1106.06, -1642.35, 3.64),
          item_show_case_offset = vector3(0.0, 0.0, 0.0),
          rotation = vector3(0.0, 0.0, 215),
          -- just use either job or gang using both at same time won't work.
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          -- gang = {
          --      allowed_list = {},
          --      allowed_grades = {}
          -- },
          categories = { Config.categories.misc, Config.categories.medical },
          recipes = { misc_recipe, medial },
          radius = 3.0
     },
     -- Weapon Crafting
     {
          table_model = 'gr_prop_gr_bench_01b', 
          coords = vector3(1394.06, 3641.1, 33.90),
          item_show_case_offset = vector3(0.0, 0.0, -5.0),
          rotation = vector3(0.0, 0.0, 20.0),
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          categories = { Config.categories.weapons },
          recipes = { weapons_recipe },
          radius = 3.0
     },
     -- Island Lighthouse
     {
          table_model = 'gr_prop_gr_bench_01b',
          coords = vector3(3612.31, 5024.85, 10.35),
          item_show_case_offset = vector3(0.0, 0.0, 0.0),
          rotation = vector3(0.0, 0.0, 110.0),
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          categories = { Config.categories.weapons },
          recipes = { weapons_recipe },
          radius = 3.0
     },
          -- innocence boulevard
     {
          table_model = 'gr_prop_gr_bench_01b',
          coords = vector3(903.5, -1688.65, 46.35),
          item_show_case_offset = vector3(0.0, 0.0, 0.0),
          rotation = vector3(0.0, 0.0, 175.0),
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          categories = { Config.categories.weapons },
          recipes = { weapons_recipe },
          radius = 3.0
     },
     --beach building
     {
          table_model = 'gr_prop_gr_bench_01b',
          coords = vector3(-1154.35, -1430.3, 10.285),
          item_show_case_offset = vector3(0.0, 0.0, -5.0),
          rotation = vector3(0.0, 0.0, 125.0),
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          categories = { Config.categories.weapons },
          recipes = { weapons_recipe },
          radius = 3.0
     },
     {
          table_model = 'gr_prop_gr_bench_01b',
          coords = vector3(2939.04, 4623.81, 47.72),
          item_show_case_offset = vector3(0.0, 0.0, 1.2),
          rotation = vector3(0.0, 0.0, 47.0),
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          categories = { Config.categories.weapons },
          recipes = { weapons_recipe },
          radius = 3.0
     }
}

--gr_prop_gr_jailer_keys_01a

-- gr_prop_gr_missle_long
-- gr_prop_gr_missle_short
-- gr_int02_generator_01
-- gr_prop_gr_hammer_01

-- w_sr_heavysnipermk2_mag2
-- w_sb_smgmk2_mag2
-- w_sb_smgmk2_mag1
-- w_pi_pistolmk2_mag1
-- w_mg_combatmgmk2_mag1
-- w_ar_carbineriflemk2_mag1
-- w_ar_assaultriflemk2_mag1
-- w_ex_vehiclemissile_3
-- w_ex_vehiclemissile_1
-- w_ex_vehiclemissile_2
-- w_ex_vehiclemortar

-- w_sg_pumpshotgunmk2_mag1
-- w_sg_pumpshotgunh4_mag1
-- gr_prop_gr_adv_case

-- w_at_pi_flsh_2
-- w_at_afgrip_2
-- w_at_muzzle_1
-- w_at_muzzle_3
-- w_at_muzzle_2
-- w_at_muzzle_5
-- w_at_muzzle_6
-- w_at_muzzle_7
-- w_at_muzzle_8
-- w_at_muzzle_9

-- w_at_pi_comp_1
-- w_at_pi_rail_1
-- w_at_scope_macro_2_mk2
-- w_at_scope_small_mk2
-- w_at_scope_medium_2
-- w_at_scope_nv
-- w_at_sights_1
-- w_at_sights_smg
-- w_at_sr_supp3


-- gr_prop_gr_drill_01a

-- gr_prop_gr_driver_01a
-- gr_prop_gr_pliers_01
-- gr_prop_gr_pliers_02
-- gr_prop_gr_rasp_01
-- gr_prop_gr_rasp_02
-- gr_prop_gr_rasp_03
-- gr_prop_gr_sdriver_01
-- gr_prop_gr_sdriver_02
-- gr_prop_gr_sdriver_03

-- gr_prop_gr_vice_01a
