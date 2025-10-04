execute align xyz positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ air

summon item ~ ~ ~ {Item:{id:magma_block,tag:{display:{Name:'["",{"text":"Блок лавы","italic":false,"color":"white"}]'}},Count:1}}

particle block minecraft:orange_concrete ~ ~ ~ 1 1 1 0 10

playsound minecraft:block.glass.break player @s

scoreboard players set .distance dist 1001
