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