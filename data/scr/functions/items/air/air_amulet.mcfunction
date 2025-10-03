
execute at @s run forwarddash
execute at @s run scale set pehkui:falling 0 @s
timedt 300 'execute at @s run scale set pehkui:falling 1 @s'

execute at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1.0 1.2

cooldownleft @s 60