execute at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.2 0.5 0 30 force @a

execute at @s run execute as @e[type=!player,type=!#scr:not_mob,limit=1,sort=nearest] at @s run data merge entity @s {Motion:[0.0d,5.0d,0.0d]}