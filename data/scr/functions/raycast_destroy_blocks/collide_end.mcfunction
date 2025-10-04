execute align xyz positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ air

summon item ~ ~ ~ {Item:{id:yellow_dye,tag:{display:{Name:'["",{"text":"Блок портала в энд","italic":false,"color":"#2e843d"}]'}},Count:1}}

particle block minecraft:black_concrete ~ ~ ~ 1 1 1 0 10

scoreboard players set .distance dist 1001
