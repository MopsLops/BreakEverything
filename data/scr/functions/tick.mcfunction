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
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]}] at @s run particle minecraft:cloud ~ ~1 ~ 1 1 1 0 1 force @s
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
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_dye"}]},tag=!lava_amulet] at @s run tag @s add lava_amulet
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:red_dye"}]},tag=lava_amulet] at @s run tag @s remove lava_amulet
#Если игрок получает урон от ближайшего к нему моба
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_dye"}]},tag=lava_amulet,scores={hurted=1..}] at @s run function scr:items/lava/lava_amulet
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_dye"}]},tag=lava_amulet] at @s run scoreboard players set @s[tag=lava_amulet] hurted 0
#Партиклы
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_dye"}]}] at @s run particle minecraft:flame ~ ~1 ~ 1 1 1 0 1 force @s


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
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_dye"}]}] at @s run particle minecraft:underwater ~ ~1 ~ 1 1 1 0 10 force @s


#БЕДРОКОВЫЕ ПРЕДМЕТЫ:
#Бесконечный блок бедрока - потом сделаю что бы он был зачарованный
execute as @a[nbt={SelectedItem:{id:"minecraft:bedrock",tag:{display:{Name:'{"text":"Бесконечный бедрок","color":"gray","bold":true,"italic":false}'}}}}] run tag @s add infinite_bedrock
execute as @a[tag=infinite_bedrock,scores={used_bedrock=1..}] at @s run item replace entity @s weapon.mainhand with air
execute as @a[tag=infinite_bedrock,scores={used_bedrock=1..}] at @s run item replace entity @s weapon.mainhand with minecraft:bedrock{display:{Name:'{"text":"Бесконечный бедрок","color":"gray","bold":true,"italic":false}'}}
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bedrock",tag:{display:{Name:'{"text":"Бесконечный бедрок","color":"gray","bold":true,"italic":false}'}}}}] run tag @s remove infinite_bedrock
scoreboard players reset @a[scores={used_bedrock=1..}] used_bedrock

#Амулет
#Я тут намудрил если что передалаю потом нормально
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:black_dye"}]},tag=!bedrock_amulet] at @s run tag @s add bedrock_amulet
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:black_dye"}]},tag=bedrock_amulet] at @s run tag @s remove bedrock_amulet
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:black_dye"}]},tag=bedrock_amulet,scores={fall=20..}] at @s if block ~ ~-1 ~ air run tag @s add falling
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:black_dye"}]},tag=bedrock_amulet] at @s[nbt={OnGround:0b}] run scoreboard players add @s fall 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:black_dye"}]},tag=bedrock_amulet,scores={fall=20..}] at @s run scale set pehkui:falling 0 @s
execute as @a[nbt={OnGround:1b}] at @s run execute at @s run scale set pehkui:falling 1 @s
execute as @a[tag=falling,nbt={OnGround:0b}] run function scr:items/bedrock/bedrock_amulet
execute as @a[nbt={OnGround:1b}] at @s run scoreboard players set @s fall 0
#Партиклы
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:black_dye"}]}] at @s run particle minecraft:ash ~ ~1 ~ 1 1 1 0 10 force @s


#АДСКИЕ ПРЕДМЕТЫ:
#Меч
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:3}}}] at @s run tag @s add nether_sword
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:3}}}] at @s run tag @s remove nether_sword

#Кирка
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:2}}}] at @s run tag @s add nether_pickaxe
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:2}}}] at @s run tag @s remove nether_pickaxe
#Если положить предмет в левую руку пока игрок держит кирку то он переплавляется:
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:2}}}] run item modify entity @s weapon.offhand scr:furnace

#Амулет
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]},tag=!nether_amulet] at @s run tag @s add nether_amulet
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]},tag=nether_amulet] at @s run tag @s remove nether_amulet
#Партиклы
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0 1 force @s


#ЭНДЕРСКИЕ ПРЕДМЕТЫ:
#Посох
execute as @a[nbt={SelectedItem:{id:"minecraft:green_dye"}}] at @s run tag @s add ender_staff
execute as @a[nbt=!{SelectedItem:{id:"minecraft:green_dye"}}] at @s run tag @s remove ender_staff

#Артефакт
execute as @a[nbt={SelectedItem:{id:"minecraft:cyan_dye"}}] at @s run tag @s add ender_artifact
execute as @a[nbt=!{SelectedItem:{id:"minecraft:cyan_dye"}}] at @s run tag @s remove ender_artifact

#Амулет
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye"}}] at @s run tag @s add ender_amulet
execute as @a[nbt=!{SelectedItem:{id:"minecraft:lime_dye"}}] at @s run tag @s remove ender_amulet
#Партиклы
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye"}}] at @s run particle block minecraft:purple_concrete ~ ~1 ~ 1 1 1 0 1 force @s
#Эндермены не агрятся если игрок держит предметы
execute as @a[nbt={SelectedItem:{id:"minecraft:green_dye"}}] at @s run team join enders
execute as @a[nbt={SelectedItem:{id:"minecraft:cyan_dye"}}] at @s run team join enders
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye"}}] at @s run team join enders
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:cyan_dye"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:lime_dye"}}] run team leave @s[team=enders]


#ЛУННЫЕ ПРЕДМЕТЫ:
#Нет луны, хочу реализовать через поломку блока


#Амулет
execute as @a[nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run tag @s add moon_amulet
execute as @a[nbt=!{SelectedItem:{id:"minecraft:white_dye"}}] at @s run tag @s remove moon_amulet
#Партиклы
execute as @a[nbt={SelectedItem:{id:"minecraft:white_dye"}}] unless entity @s[scores={timestop=1..}] at @s run particle block minecraft:end_stone ~ ~1 ~ 1 1 1 0 10 force @s


#ОБЛАЧНЫЕ ПРЕДМЕТЫ:
#Меч
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:2}}}] at @s run tag @s add cloud_sword
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:2}}}] at @s run tag @s remove cloud_sword

#Палка
execute as @a[nbt={SelectedItem:{id:"minecraft:magenta_dye"}}] at @s run tag @s add cloud_stick
execute as @a[nbt=!{SelectedItem:{id:"minecraft:magenta_dye"}}] at @s run tag @s remove cloud_stick

#Амулет
execute as @a[nbt={SelectedItem:{id:"minecraft:gray_dye"}}] at @s run tag @s add cloud_amulet
execute as @a[nbt=!{SelectedItem:{id:"minecraft:gray_dye"}}] at @s run tag @s remove cloud_amulet
# Если в мире дождь
# если любой предикат true -> выставляем глобально 1, иначе 0
execute if predicate scr:is_raining run scoreboard players set global isRaining 1
execute unless predicate scr:is_raining run scoreboard players set global isRaining 0
# скопировать значение глобального на всех игроков (если нужно, чтобы игроки видели свой score)
execute as @a run scoreboard players operation @s isRaining = global isRaining

#СПАУНЕРСКИЕ ПРЕДМЕТЫ:
#Меч
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}}] at @s run tag @s add spawn_sword
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}}] at @s run tag @s remove spawn_sword

#Кирка
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:1}}}] at @s run tag @s add spawn_pickaxe
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{CustomModelData:1}}}] at @s run tag @s remove spawn_pickaxe
execute as @e[type=silverfish,tag=sf_burst] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air destroy
execute as @e[type=silverfish,tag=sf_burst] at @s run particle block minecraft:stone ~ ~ ~ 0.5 0.5 0.5 0.2 20
execute as @e[type=silverfish,tag=sf_burst] at @s run playsound minecraft:block.stone.break block @a ~ ~ ~ 0.5 1

#Амулет
execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}}] at @s run tag @s add spawn_amulet
execute as @a[nbt=!{SelectedItem:{id:"minecraft:light_gray_dye"}}] at @s run tag @s remove spawn_amulet
#Если игрок получает урон от ближайшего к нему моба призывается дружелюбный моб
execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}},tag=spawn_amulet,scores={hurted=1..}] at @s run function scr:items/spawn/spawn_amulet
execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}},tag=spawn_amulet] at @s run scoreboard players set @s[tag=spawn_amulet] hurted 0
#Партиклы
# execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}}] at @s run particle minecraft:flame ~ ~1 ~ 1 1 1 0 1 force @s
execute as @a run team join friend


execute as @e[scores={shift=1..}] at @s run scoreboard players set @s shift 0
execute as @a[scores={click=1..}] at @s run scoreboard players set @s click 0