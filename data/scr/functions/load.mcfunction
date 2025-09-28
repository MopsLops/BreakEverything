
tellraw @a "Датапак загружен."
tellraw @a [{"text": "Создатель - ","color": "green"},{"text": "Scratch1337","bold": true,"color": "orange"}]

scoreboard objectives add shift custom:sneak_time
scoreboard objectives add click used:carrot_on_a_stick

scoreboard objectives add dist dummy

gamerule keepInventory true
gamerule doWeatherCycle false

scoreboard objectives add heal trigger
