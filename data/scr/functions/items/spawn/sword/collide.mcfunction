# setblock ~ ~2 ~ lava keep

execute at @s run summon wolf ~ ~ ~ {Tags:["wolf"],Team:"friend"}
execute as @e[tag=wolf] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100

execute at @s run execute as @e[tag=wolf] at @s run tamed Mops_Lops @s
execute as @e[tag=wolf] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100

timedt 300 'execute as @e[tag=wolf] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100'
timedt 300 'execute as @e[tag=wolf] at @s run tp @s ~ ~-120 ~'
timedt 301 'execute as @e[tag=wolf] at @s run kill @s'


# execute at @s run setblock ~ ~ ~ fire replace


scoreboard players set .distance dist 1000
