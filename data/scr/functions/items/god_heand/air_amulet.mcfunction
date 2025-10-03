tag @s[tag=god_heand] add cd1
text @s[tag=god_heand] 50 "§cРывок  §c[R]" "[w]-[tw]-12" "[h]/2-[th]/2-15" 100 1 0 1 0.5
execute at @s run timedt 60 'text @s 50 "§fРывок  §b[R]" "[w]-[tw]-12" "[h]/2-[th]/2-15" 100 1 0 1 0.5'
execute at @s run timedt 60 'tag @s remove cd1'

execute at @s run forwarddash
execute at @s run scale set pehkui:falling 0 @s
timedt 300 'execute at @s run scale set pehkui:falling 1 @s'

execute at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1.0 1.2