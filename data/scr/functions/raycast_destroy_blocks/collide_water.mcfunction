execute align xyz positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ air

summon item ~ ~ ~ {Item:{id:paper,tag:{display:{Name:'["",{"text":"Частичка воды","italic":false,"color":"white"}]'}},Count:1}}

particle block minecraft:blue_concrete ~ ~ ~ 1 1 1 0 10

playsound minecraft:block.glass.break player @s

scoreboard players set .distance dist 1001
