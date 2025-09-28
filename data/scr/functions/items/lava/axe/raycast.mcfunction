# execute as @e[type=!#scr:not_mob,tag=!raycasting,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[dx=0] positioned ~0.99 ~0.99 ~0.99 run function scr:raycast_scream/collide



scoreboard players add .distance dist 1

# particle minecraft:cloud ~ ~-.25 ~ .6 .6 .6 .1 1

# fill ~ ~ ~ ~ ~ ~ air destroy

execute if score .distance dist matches ..200 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ #scr:raycast_pass run function scr:items/lava/axe/raycast

#если попал в любой блок
# execute if score .distance dist matches ..300 positioned ^ ^ ^0.05 rotated ~ ~ run function scr:items/lava/axe/collide_block


#если попал в какой-то блок определенный
execute if score .distance dist matches ..200 positioned ^ ^ ^0.05 rotated ~ ~ if block ~ ~ ~ oak_log run function scr:items/lava/axe/collide_block