


#СНЕЖКИ

#execute as @e[type=snowball] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["explosion_watcher"]}
#execute as @e[type=minecraft:area_effect_cloud,tag=explosion_watcher] at @s unless entity @e[type=minecraft:snowball,distance=..3] run summon tnt ~ ~ ~ {Fuze:0b}


# execute as @a at @s run function scr:interact/raycast_start




execute as @e[scores={shift=1..}] at @s run scoreboard players set @s shift 0
execute as @a[scores={click=1..}] at @s run scoreboard players set @s click 0