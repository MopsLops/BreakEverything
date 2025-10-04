tag @s add air

execute as @s at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_wool
execute at @s run bigdash
timedt 5 'execute at @s run scale set pehkui:falling 0 @s'

timedt 81 'execute at @s run scale set pehkui:falling 1 @s'
timedt 81 'tag @s remove air'

cooldown @s 80