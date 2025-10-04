execute at @s[tag=air_sword] run function scr:items/air/air_sword

execute at @s[tag=air_pickaxe] run function scr:items/air/pickaxe/raycast_start

execute at @s[tag=lava_sword] run function scr:items/lava/sword/raycast_start

execute at @s[tag=lava_axe] run function scr:items/lava/axe/raycast_start

execute at @s[tag=water_shovel] run function scr:items/water/shovel/raycast_start

execute at @s[tag=ender_amulet,tag=!cooldown] run function scr:items/end/amulet/ender_amulet_l

execute at @s[tag=spawn_sword,tag=!cooldown] run function scr:items/spawn/sword/raycast_start

execute at @s run function scr:raycast_destroy_blocks/raycast_start