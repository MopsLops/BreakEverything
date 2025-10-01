scoreboard players set @s freeze 0
gamerule doMobSpawning true
execute as @e[type=!player,type=!#scr:not_mob] run tag @s remove frozen

gamerule randomTickSpeed 3
gamerule doDaylightCycle true