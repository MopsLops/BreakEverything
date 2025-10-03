tag @s[tag=god_heand] add cd2
text @s[tag=god_heand] 51 "§cТелепорт в ад  §c[V]" "[w]-[tw]-12" "[h]/2-[th]/2" 100 1 0 1 0.5
execute at @s run timedt 200 'text @s 51 "§fТелепорт в ад  §b[V]" "[w]-[tw]-12" "[h]/2-[th]/2" 100 1 0 1 0.5'
execute at @s run timedt 200 'tag @s remove cd2'

execute at @s[tag=!cd_tp,nbt={Dimension:"minecraft:the_nether"}] run function scr:items/nether/amulet/tp_overworld

execute at @s[tag=!cd_tp,nbt={Dimension:"minecraft:overworld"}] run function scr:items/nether/amulet/tp_nether