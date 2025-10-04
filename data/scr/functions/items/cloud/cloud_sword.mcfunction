execute at @s run execute as @e[type=!player,type=!#scr:not_mob,distance=..7,sort=nearest] at @s run cparticle @a MagicTornade ~ ~.1 ~ 0 0 0 .3

execute at @s run execute as @e[type=!player,type=!#scr:not_mob,distance=..7,sort=nearest] at @s run data merge entity @s {Motion:[0.0d,3.0d,0.0d]}
execute at @s run execute as @e[type=!player,type=!#scr:not_mob,distance=..7,sort=nearest] at @s run tag @s add cloud_up

execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:stone"},Time:1,Motion:[0.3d,0.8d,0.1d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:dirt"},Time:1,Motion:[-0.4d,0.6d,0.2d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Time:1,Motion:[0.6d,0.7d,-0.4d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:gravel"},Time:1,Motion:[-0.2d,0.9d,-0.5d]}

execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:stone"},Time:1,Motion:[0.5d,0.6d,-0.2d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:dirt"},Time:1,Motion:[-0.6d,0.8d,0.4d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Time:1,Motion:[0.2d,0.5d,0.7d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:gravel"},Time:1,Motion:[-0.7d,0.7d,-0.3d]}

execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:stone"},Time:1,Motion:[0.4d,1.0d,0.4d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:dirt"},Time:1,Motion:[-0.5d,0.5d,-0.6d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Time:1,Motion:[0.7d,0.9d,0.3d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:gravel"},Time:1,Motion:[-0.3d,0.4d,0.8d]}

execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:stone"},Time:1,Motion:[0.8d,0.6d,-0.5d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:dirt"},Time:1,Motion:[-0.2d,0.9d,0.6d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Time:1,Motion:[0.5d,0.7d,-0.7d]}
execute at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:gravel"},Time:1,Motion:[-0.4d,0.8d,0.5d]}

cooldown @s 120