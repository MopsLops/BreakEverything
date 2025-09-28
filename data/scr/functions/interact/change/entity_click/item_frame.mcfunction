

execute at @s[nbt={Item:{}}] run summon item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["item_get"]} 
execute at @s[nbt={Item:{}}] run data modify entity @e[type=item,nbt={Item:{id:"minecraft:barrier"}},limit=1] Item set from entity @s Item
execute at @s[nbt={Item:{}}] run tp @e[tag=item_get] @a[tag=raycasting,limit=1]
execute at @s[nbt={Item:{}}] run timedt 20 'function scr:interact/clear_player_tags'
execute at @s[nbt={Item:{}}] run kill @s



