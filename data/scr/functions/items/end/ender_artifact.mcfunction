execute at @s run summon enderman ~-1 ~1 ~-1 {Tags:["ender"],Team:"friend"}
execute at @s run summon enderman ~-1 ~1 ~1 {Tags:["ender"],Team:"friend"}
execute at @s run summon enderman ~-1 ~1 ~ {Tags:["ender"],Team:"friend"}

#Заменить на Scratch1337
execute at @s run execute as @e[tag=ender] at @s run tamed Mops_Lops @s
execute as @e[tag=ender] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100

timedt 300 'execute as @e[tag=ender] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100'
timedt 300 'execute as @e[tag=ender] at @s run tp @s ~ ~-120 ~'
timedt 301 'execute as @e[tag=ender] at @s run kill @s'

cooldown @s 400