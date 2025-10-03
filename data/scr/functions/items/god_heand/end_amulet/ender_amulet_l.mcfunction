tag @s[tag=god_heand] add cd3
text @s[tag=god_heand] 52 "§cТелепорт в энд  §c[X]" "[w]-[tw]-12" "[h]/2-[th]/2+15" 100 1 0 1 0.5
execute at @s run timedt 200 'text @s 52 "§fТелепорт в энд  §b[X]" "[w]-[tw]-12" "[h]/2-[th]/2+15" 100 1 0 1 0.5'
execute at @s run timedt 200 'tag @s remove cd3'

execute at @s[tag=!cd2_tp,nbt={Dimension:"minecraft:the_end"}] run function scr:items/end/amulet/tp_overworld

execute at @s[tag=!cd2_tp,nbt={Dimension:"minecraft:overworld"}] run function scr:items/end/amulet/tp_end