tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:raycast_destroy_blocks/raycast

playsound minecraft:block.glass.break player @s

tag @s remove raycasting


scoreboard players reset .distance dist