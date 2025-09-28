# tag @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]}] add air_amulet
# image @s[tag=air_amulet] 50 bg_btn.png "[w]-29.5" "[ty50]-[th50]+5" 100 20 "[th]*1.6" 0 0.5 0.5
# text @s[tag=air_amulet] 50 "§fРывок  §b[ПКМ]" "[w]-[tw]-12" "[h]/2-[th]/2" 100 1 0 1 0.5

# image @s 51 bg_btn.png "[w]-29.5" "[ty51]-[th51]+5" 100 20 "[th]*1.6" 0 0.5 0.5
# executeclient @s bind "/execute at @s run function scr:raycast_vsel/raycast_start" v SingleUse
# text @s 51 "§fКнопка 2  §b[V]" "[w]-[tw]-12" "[h]/2-[th]/2" 100 1 0 1 0.5

# image @s 52 bg_btn.png "[w]-29.5" "[ty52]-[th52]+5" 100 20 "[th]*1.6" 0 0.5 0.5
# executeclient @s bind "/execute at @s run function scr:raycast_vsel/raycast_start" x SingleUse
# text @s 52 "§fКнопка 3  §b[X]" "[w]-[tw]-12" "[h]/2-[th]/2+15" 100 1 0 1 0.5

# image @s 53 bg_btn.png "[w]-29.5" "[ty53]-[th53]+5" 100 20 "[th]*1.6" 0 0.5 0.5
# executeclient @s bind "/execute at @s run function scr:raycast_vsel/raycast_start" z SingleUse
# text @s 53 "§fКнопка 4  §b[Z]" "[w]-[tw]-12" "[h]/2-[th]/2+30" 100 1 0 1 0.5

# image @s 54 bg_btn.png "[w]-29.5" "[ty54]-[th54]+5" 100 20 "[th]*1.6" 0 0.5 0.5
# executeclient @s bind "/execute at @s run function scr:raycast_vsel/raycast_start" b SingleUse
# text @s 54 "§fКнопка 5  §b[B]" "[w]-[tw]-12" "[h]/2-[th]/2+45" 100 1 0 1 0.5
