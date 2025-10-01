execute at @s run execute as @e[type=!player,type=!#scr:not_mob,distance=..5,sort=nearest] at @s run data merge entity @s {Motion:[0.0d,3.0d,0.0d]}
execute at @s run execute as @e[type=!player,type=!#scr:not_mob,distance=..5,sort=nearest] at @s run tag @s add cloud_up

execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:stone"},Time:1,Motion:[0.3d,0.5d,0.3d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:dirt"},Time:1,Motion:[-0.3d,0.7d,-0.3d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Time:1,Motion:[0.5d,0.4d,-0.5d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:gravel"},Time:1,Motion:[-0.5d,0.6d,0.5d]}
cooldown @s 120