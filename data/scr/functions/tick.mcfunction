#Сделал отдельную функцию под эффекты я незнаю почему они не хотят работать :/ если я вызываю функцию в чате то всё работае
function scr:effects_tick

#ВВОЗДУШНЫЕ ВЕЩИ:
#Меч - сделал через attack.mcfunction
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:4}}}] at @s run tag @s add air_sword
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:4}}}] at @s run tag @s remove air_sword

#Кирка
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:3}}},tag=!air_pickaxe] run tag @s add air_pickaxe
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:3}}},tag=air_pickaxe] at @s run tag @s remove air_pickaxe

#Амулет - сделал через event.mcfunction
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]},tag=!air_amulet] at @s run tag @s add air_amulet
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]},tag=air_amulet] at @s run tag @s remove air_amulet
#Эффекты вокруг игрока, если тот держит амулет
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]}] run particle minecraft:cloud ~ ~1 ~ 1 1 1 0 1 force @a
#Звуки применения добавлю позже


#ЛАВОВЫЕ ВЕЩИ:
#Меч
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:5}}}] at @s run tag @s add lava_sword
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:5}}},tag=lava_sword] at @s run tag @s remove lava_sword

#Топор
#Пока думаю как сделать лучше что бы ставился огонь на месте определённого сломанного блока например: Дуб, Берёза и т.д.
#Думаю сделать это через райкаст
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tag @s add lava_axe
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_log"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_log"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:birch_log"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:jungle_log"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:acacia_log"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_log"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:mangrove_log"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:cherry_log"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:crimson_stem"}},distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}}] at @s run tp @e[type=minecraft:item,nbt={Item:{id:"minecraft:warped_stem"}},distance=..5] @s

execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_axe",tag:{CustomModelData:1}}},tag=lava_axe] at @s run tag @s remove lava_axe

#Амулет
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]},tag=!lava_amulet] at @s run tag @s add lava_amulet
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]},tag=lava_amulet] at @s run tag @s remove lava_amulet
#Если игрок получает урон от ближайшего к нему моба
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]},tag=lava_amulet,scores={hurted=1..}] at @s run function scr:items/lava/lava_amulet
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]},tag=lava_amulet] at @s run scoreboard players set @s[tag=lava_amulet] hurted 0
#Партиклы
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]}] run particle minecraft:flame ~ ~1 ~ 1 1 1 0 1 force @a


#ВОДЯНЫЕ ПРЕДМЕТЫ:
#Мотыга
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{CustomModelData:1}}}] at @s run tag @s add water_hoe
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_hoe",tag:{CustomModelData:1}}}] at @s run tag @s remove water_hoe

#Лопата
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_shovel",tag:{CustomModelData:1}}}] at @s run tag @s add water_shovel
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_shovel",tag:{CustomModelData:1}}}] at @s run tag @s remove water_shovel

#Амулет
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_dye"}]},tag=!water_amulet] at @s run tag @s add water_amulet
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:blue_dye"}]},tag=water_amulet] at @s run tag @s remove water_amulet
#Партиклы
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_dye"}]}] run particle minecraft:underwater ~ ~1 ~ 1 1 1 0 10 force @a


execute as @e[scores={shift=1..}] at @s run scoreboard players set @s shift 0
execute as @a[scores={click=1..}] at @s run scoreboard players set @s click 0