scoreboard players add @s mobs 1

playsound minecraft:block.sniffer_egg.crack ambient @s ~ ~ ~ 1 1

execute if score @s mobs matches 0 run summon cow ~ ~ ~
execute if score @s mobs matches 1 run summon pig ~ ~ ~
execute if score @s mobs matches 2 run summon sheep ~ ~ ~
execute if score @s mobs matches 3 run summon chicken ~ ~ ~
execute if score @s mobs matches 4 run summon rabbit ~ ~ ~
execute if score @s mobs matches 5 run summon horse ~ ~ ~
execute if score @s mobs matches 6 run summon donkey ~ ~ ~
execute if score @s mobs matches 7 run summon mule ~ ~ ~
execute if score @s mobs matches 8 run summon llama ~ ~ ~
execute if score @s mobs matches 9 run summon trader_llama ~ ~ ~
execute if score @s mobs matches 10 run summon mooshroom ~ ~ ~
execute if score @s mobs matches 11 run summon parrot ~ ~ ~
execute if score @s mobs matches 12 run summon cat ~ ~ ~
execute if score @s mobs matches 13 run summon turtle ~ ~ ~
execute if score @s mobs matches 14 run summon fox ~ ~ ~
execute if score @s mobs matches 15 run summon ocelot ~ ~ ~
execute if score @s mobs matches 16 run summon panda ~ ~ ~
execute if score @s mobs matches 17 run summon bee ~ ~ ~
execute if score @s mobs matches 18 run summon strider ~ ~ ~
execute if score @s mobs matches 19 run summon sniffer ~ ~ ~
execute if score @s mobs matches 20 run summon camel ~ ~ ~
execute if score @s mobs matches 21 run summon cod ~ ~ ~
execute if score @s mobs matches 22 run summon salmon ~ ~ ~
execute if score @s mobs matches 23 run summon pufferfish ~ ~ ~
execute if score @s mobs matches 24 run summon tropical_fish ~ ~ ~
execute if score @s mobs matches 25 run summon squid ~ ~ ~
execute if score @s mobs matches 26 run summon glow_squid ~ ~ ~
execute if score @s mobs matches 27 run summon axolotl ~ ~ ~
execute if score @s mobs matches 28 run summon villager ~ ~ ~
execute if score @s mobs matches 29 run summon wandering_trader ~ ~ ~
execute if score @s mobs matches 30 run summon iron_golem ~ ~ ~
execute if score @s mobs matches 31 run summon snow_golem ~ ~ ~
execute if score @s mobs matches 32 run summon wolf ~ ~ ~

execute if score @s mobs matches 32.. run scoreboard players reset @s mobs