
execute at @s run dash
execute at @s run scale set pehkui:falling 0 @s
timedt 200 'execute at @s run scale set pehkui:falling 1 @s'

particle minecraft:cloud ~ ~0.5 ~ 0.5 0.2 0.5 0 30 force @a

cooldownleft @s 60