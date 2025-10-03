setblock ~ ~ ~ lava keep

particle minecraft:flame ~ ~1 ~ .5 .5 .5 .1 100
execute as @e[type=!player,distance=..9] at @s run data merge entity @s {Fire:200s,Health:1.0f}


# execute at @s run setblock ~ ~ ~ fire replace


scoreboard players set .distance dist 1000
