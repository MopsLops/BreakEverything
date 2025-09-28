
tellraw @a "Датапак загружен."
tellraw @a [{"text": "Создатель - ","color": "green"},{"text": "Scratch1337","bold": true,"color": "orange"}]

scoreboard objectives add shift custom:sneak_time
scoreboard objectives add click used:carrot_on_a_stick

scoreboard objectives add dist dummy

gamerule keepInventory true
gamerule doWeatherCycle false

#Убрать(добавил что бы постоянно не прописывать)
function scr:bind

scoreboard objectives add used_bedrock used:bedrock

scoreboard objectives add hurted minecraft.custom:minecraft.damage_taken

scoreboard objectives add fall dummy

scoreboard objectives add heal trigger
