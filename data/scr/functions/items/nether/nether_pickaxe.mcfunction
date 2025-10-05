execute as @a[scores={offhand_flag=1}] at @s run scoreboard players set @s offhand_flag 2

execute as @a if data entity @s Inventory[{Slot:-106b}] run scoreboard players set @s offhand_flag 1

item modify entity @s weapon.offhand scr:furnace

execute as @a[scores={offhand_flag=1}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.1 0.1 0.1 0 10 force @s
execute as @a[scores={offhand_flag=1}] at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 5 force @s
execute as @a[scores={offhand_flag=1}] at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 1