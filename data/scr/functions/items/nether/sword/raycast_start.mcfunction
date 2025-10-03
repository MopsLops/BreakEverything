tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:items/nether/sword/raycast

cooldown @s 60


tag @s remove raycasting


scoreboard players reset .distance dist