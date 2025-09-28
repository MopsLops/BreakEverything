tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:interact/interact_action/raycast



tag @s remove raycasting


scoreboard players reset .distance dist