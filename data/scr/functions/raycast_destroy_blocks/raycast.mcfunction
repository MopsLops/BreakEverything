# execute as @e[type=!#scr:not_mob,tag=!raycasting,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[dx=0] positioned ~0.99 ~0.99 ~0.99 run function scr:raycast_destroy_blocks/collide



scoreboard players add .distance dist 1

#particle minecraft:dust 0 0 0 0 ~ ~ ~ 0 0 0 0 0
#particle minecraft:dust 0 0 0 0.05 ~ ~ ~ 0 0 0 0 1

execute if score .distance dist matches ..1000 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ #scr:raycast_pass2 run function scr:raycast_destroy_blocks/raycast



#если попал в любой блок
# execute if score .distance dist matches ..1000 positioned ^ ^ ^0.05 rotated ~ ~ run function scr:raycast_destroy_blocks/collide_block


#если попал в какой-то блок определенный
execute if score .distance dist matches ..1000 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ nether_portal run function scr:raycast_destroy_blocks/collide_nether

execute if score .distance dist matches ..1000 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ end_portal run function scr:raycast_destroy_blocks/collide_end
execute if score .distance dist matches ..1000 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ water run function scr:raycast_destroy_blocks/collide_water
execute if score .distance dist matches ..1000 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ lava run function scr:raycast_destroy_blocks/collide_lava