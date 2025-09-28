#ВВОЗДУШНЫЕ ВЕЩИ:
#Меч - сделал через attack.mcfunction
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:4}}}] at @s run tag @s add air_sword
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:4}}}] at @s run tag @s remove air_sword

#Кирка
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:3}}},tag=!air_pickaxe] run function scr:items/air/air_pickaxe
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:3}}},tag=air_pickaxe] at @s run tag @s remove air_pickaxe

#Амулет - сделал через event.mcfunction
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]},tag=!air_amulet] at @s run tag @s add air_amulet
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]},tag=air_amulet] at @s run tag @s remove air_amulet
#Эффекты вокруг игрока, если тот держит амулет
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]}] run particle minecraft:cloud ~ ~1 ~ 1 1 1 0 1 force @a
#Звуки применения добавлю позже

execute as @e[scores={shift=1..}] at @s run scoreboard players set @s shift 0
execute as @a[scores={click=1..}] at @s run scoreboard players set @s click 0