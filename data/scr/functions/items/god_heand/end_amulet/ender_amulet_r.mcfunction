tag @s[tag=god_heand] add cd4
text @s[tag=god_heand] 53 "§cХорус  §c[Z]" "[w]-[tw]-12" "[h]/2-[th]/2+30" 100 1 0 1 0.5
execute at @s run timedt 60 'text @s 53 "§fХорус  §b[Z]" "[w]-[tw]-12" "[h]/2-[th]/2+30" 100 1 0 1 0.5'
execute at @s run timedt 60 'tag @s remove cd4'

spreadplayers ~ ~ 0 8 false @s
playsound entity.enderman.teleport player @s ~ ~ ~ 1 1
particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0 100 force @s