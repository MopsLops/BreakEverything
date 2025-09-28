

execute align xyz positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~ ~0.5 run loot give @s mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}],get_blocks_look:1b}
execute align xyz positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ air replace
execute as @e[tag=raycasting] at @s run playsound entity.generic.eat ambient @a ~ ~ ~


scoreboard players set .distance dist 201
