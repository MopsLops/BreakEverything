tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:raycast_eat/raycast


tag @s remove raycasting


scoreboard players reset .distance dist