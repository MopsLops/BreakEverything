# execute as @e[type=!#scr:not_mob,tag=!raycasting,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[dx=0] positioned ~0.99 ~0.99 ~0.99 run function scr:raycast/collide



scoreboard players add .distance dist 1

#particle minecraft:dust 0 0 0 0 ~ ~ ~ 0 0 0 0 0
#particle minecraft:dust 0 0 0 0.05 ~ ~ ~ 0 0 0 0 1

execute if score .distance dist matches ..200 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ #scr:raycast_pass2 run function scr:raycast_set_cloud/raycast



#если попал в любой блок
# execute if score .distance dist matches ..1000 positioned ^ ^ ^0.05 rotated ~ ~ run function scr:raycast/collide_block



execute if score .distance dist matches ..200 positioned ^ ^ ^3 rotated ~ ~ if block ~ ~ ~ air run function scr:raycast_set_cloud/cloud