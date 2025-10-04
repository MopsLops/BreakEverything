tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:items/water/shovel/raycast

playsound minecraft:ambient.underwater.loop ambient @s ~ ~ ~ 1 1

tag @s remove raycasting


scoreboard players reset .distance dist