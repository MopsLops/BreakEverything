tag @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_dye"}]}] add god_heand

image @s[tag=god_heand] 50 bg_btn.png "[w]-29.5" "[ty50]-[th50]+5" 100 20 "[th]*1.6" 0 0.5 0.5
executeclient @s[tag=god_heand] bind "/execute at @s[tag=!cd1] run function scr:items/god_heand/air_amulet" r SingleUse
text @s[tag=god_heand] 50 "§fРывок  §b[R]" "[w]-[tw]-12" "[h]/2-[th]/2-15" 100 1 0 1 0.5

image @s[tag=god_heand] 51 bg_btn.png "[w]-29.5" "[ty51]-[th51]+5" 100 20 "[th]*1.6" 0 0.5 0.5
executeclient @s[tag=god_heand] bind "/execute at @s[tag=!cd2] run function scr:items/god_heand/nether_amulet/nether_amulet" v SingleUse
text @s[tag=god_heand] 51 "§fТелепорт в ад  §b[V]" "[w]-[tw]-12" "[h]/2-[th]/2" 100 1 0 1 0.5

image @s[tag=god_heand] 52 bg_btn.png "[w]-29.5" "[ty52]-[th52]+5" 100 20 "[th]*1.6" 0 0.5 0.5
executeclient @s[tag=god_heand] bind "/execute at @s[tag=!cd3] run function scr:items/god_heand/end_amulet/ender_amulet_l" x SingleUse
text @s[tag=god_heand] 52 "§fТелепорт в энд  §b[X]" "[w]-[tw]-12" "[h]/2-[th]/2+15" 100 1 0 1 0.5

image @s[tag=god_heand] 53 bg_btn.png "[w]-29.5" "[ty53]-[th53]+5" 100 20 "[th]*1.6" 0 0.5 0.5
executeclient @s bind "/execute at @s[tag=!cd4] run function scr:items/god_heand/end_amulet/ender_amulet_r" z SingleUse
text @s[tag=god_heand] 53 "§fХорус  §b[Z]" "[w]-[tw]-12" "[h]/2-[th]/2+30" 100 1 0 1 0.5

image @s[tag=god_heand] 54 bg_btn.png "[w]-29.5" "[ty54]-[th54]+5" 100 20 "[th]*1.6" 0 0.5 0.5
executeclient @s bind "/execute at @s run function scr:items/god_heand/timestop" b SingleUse
text @s[tag=god_heand] 54 "§fОстановка времени  §b[B]" "[w]-[tw]-12" "[h]/2-[th]/2+45" 100 1 0 1 0.5

image @s[tag=god_heand] 54 bg_btn.png "[w]-29.5" "[ty54]-[th54]+5" 100 20 "[th]*1.6" 0 0.5 0.5
executeclient @s bind "/execute at @s run function scr:items/god_heand/cloud_amulet" n SingleUse
text @s[tag=god_heand] 54 "§fУправление погодой  §b[N]" "[w]-[tw]-12" "[h]/2-[th]/2+45" 100 1 0 1 0.5