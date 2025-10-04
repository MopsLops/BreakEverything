tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:items/water/hoe/raycast

execute at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1.0 1.2

tag @s remove raycasting


scoreboard players reset .distance dist