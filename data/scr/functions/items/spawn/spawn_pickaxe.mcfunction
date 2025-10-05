playsound minecraft:block.sniffer_egg.plop ambient @s ~ ~ ~ 1 1

execute at @s run summon silverfish ~1 ~ ~ {Tags:["sf_burst"]}
execute at @s run summon silverfish ~-1 ~ ~ {Tags:["sf_burst"]}
execute at @s run summon silverfish ~ ~ ~1 {Tags:["sf_burst"]}
execute at @s run summon silverfish ~ ~ ~-1 {Tags:["sf_burst"]}

execute at @s run summon silverfish ~2 ~ ~2 {Tags:["sf_burst"]}
execute at @s run summon silverfish ~-2 ~ ~2 {Tags:["sf_burst"]}
execute at @s run summon silverfish ~2 ~ ~-2 {Tags:["sf_burst"]}
execute at @s run summon silverfish ~-2 ~ ~-2 {Tags:["sf_burst"]}

execute at @s run summon silverfish ~3 ~ ~ {Tags:["sf_burst"]}
execute at @s run summon silverfish ~ ~ ~3 {Tags:["sf_burst"]}

execute at @e[tag=sf_burst] run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute at @e[tag=sf_burst] run playsound minecraft:entity.silverfish.ambient hostile @a ~ ~ ~ 1 1

timedt 219 'execute as @e[tag=sf_burst] at @s run particle poof ~ ~1 ~ .5 .5 .5 .1 100'
timedt 219 'execute as @e[tag=sf_burst] at @s run tp @s ~ ~-130 ~'
timedt 218 'execute as @e[tag=sf_burst] at @s run kill @s'

cooldown @s 220