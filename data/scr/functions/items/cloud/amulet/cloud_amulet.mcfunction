scoreboard players set @s freeze 1
gamerule doMobSpawning false
execute as @e[type=!player,type=!#scr:not_mob] run tag @s add frozen

gamerule randomTickSpeed 0
gamerule doDaylightCycle false