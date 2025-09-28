# execute as @e[type=!#scr:not_mob,tag=!raycasting,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[dx=0] positioned ~0.99 ~0.99 ~0.99 run function scr:raycast_scream/collide



scoreboard players add .distance dist 1

execute if score .distance dist matches ..200 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ #scr:raycast_pass2 run function scr:items/water/shovel/raycast



#если попал в любой блок
# execute if score .distance dist matches ..200 positioned ^ ^ ^0.05 rotated ~ ~ run function scr:raycast_scream/collide_block
particle minecraft:bubble_pop ~ ~-.25 ~ 2 2 2 0 1

#если попал в какой-то блок определенный
execute if score .distance dist matches ..200 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ minecraft:water run function scr:items/water/shovel/collide_block