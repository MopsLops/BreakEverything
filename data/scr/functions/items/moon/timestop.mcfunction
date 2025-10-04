scoreboard players add @s timestop 1

execute at @s run cparticle @a portal ~ ~1 ~ 0 0 0 .2
# execute at @s run particle minecraft:end_rod ~ ~1 ~ .5 .5 .5 .1 100

playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 1

execute at @s[scores={timestop=1}] run playsound scr.timestop ambient @a ~ ~ ~
execute at @s[scores={timestop=1}] run tag @s add stopped
execute at @s[scores={timestop=1}] run timeclock pauseTime true
execute at @s[scores={timestop=2}] run timeclock pauseTime false
execute at @s[scores={timestop=2}] run playsound scr.timestop ambient @a ~ ~ ~
execute at @s[scores={timestop=2}] run tag @s remove stopped
execute at @s[scores={timestop=2..}] run scoreboard players reset @s timestop