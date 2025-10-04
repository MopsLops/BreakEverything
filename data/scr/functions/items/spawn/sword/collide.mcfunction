# setblock ~ ~2 ~ lava keep

execute at @s run summon wolf ~ ~ ~ {Tags:["wolf"],Team:"friend"}
execute as @e[tag=wolf] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100

execute at @s run execute as @e[tag=wolf] at @s run tamed Scratch1337 @s
execute as @e[tag=wolf] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100

timedt 200 'execute as @e[tag=wolf] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100'
timedt 200 'execute as @e[tag=wolf] at @s run tp @s ~ ~-120 ~'
timedt 201 'execute as @e[tag=wolf] at @s run kill @s'

execute as @e[tag=raycasting] at @s run cooldown @s 201
# execute at @s run setblock ~ ~ ~ fire replace


scoreboard players set .distance dist 1000
