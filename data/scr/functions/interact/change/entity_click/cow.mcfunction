

execute at @s[tag=quest,tag=!finish] if entity @a[tag=raycasting,limit=1,nbt={Inventory:[{id:"minecraft:milk_bucket",Count:1b}]}] run tellraw @a "§c[Корова] §fМуу-уу-у. Это мне пригодится. Спасибо!"
execute at @s[tag=quest,tag=!finish] if entity @a[tag=raycasting,limit=1,nbt={Inventory:[{id:"minecraft:milk_bucket",Count:1b}]}] run function scr:interact/change/finish_quest/cow

execute at @s[tag=quest,tag=!finish] if entity @a[tag=raycasting,limit=1,nbt=!{Inventory:[{id:"minecraft:milk_bucket",Count:1b}]}] run tellraw @a "§c[Корова] §fМуу-уу-у. У вас нет молока.."
execute at @s[tag=quest,tag=!finish] if entity @a[tag=raycasting,limit=1,nbt=!{Inventory:[{id:"minecraft:milk_bucket",Count:1b}]}] run timedt 20 'function scr:interact/clear_player_tags'


execute at @s[tag=!quest,tag=!finish] run tellraw @a "§c[Корова] §fМуу-уу-у. Ой, простите."
execute at @s[tag=!quest,tag=!finish] run timedt 30 'tellraw @a "§c[Корова] §fУ меня для вас кое-что есть.."'
execute at @s[tag=!quest,tag=!finish] run timedt 60 'tellraw @a "§c[Корова] §fЯ продам §dВолшебные рога §fвсего за 3 ведра молока."'
execute at @s[tag=!quest,tag=!finish] run timedt 60 'function scr:interact/clear_player_tags'
execute at @s[tag=!quest,tag=!finish] run tag @s add quest
