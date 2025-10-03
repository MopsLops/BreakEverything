tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:items/lava/sword/raycast

execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.0 1.0


tag @s remove raycasting


scoreboard players reset .distance dist