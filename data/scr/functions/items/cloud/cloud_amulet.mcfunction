scoreboard players add @s weathertoggle 1

execute as @s[scores={weathertoggle=1}] run weather rain 12000
execute as @s[scores={weathertoggle=1}] run tag @s add weather_raining
execute as @s[scores={weathertoggle=1}] run scoreboard players set @s isRaining 1
execute as @s[scores={weathertoggle=2}] run weather clear 12000
execute as @s[scores={weathertoggle=2}] run tag @s remove weather_raining
execute as @s[scores={weathertoggle=2}] run scoreboard players set @s isRaining 0
execute as @s[scores={weathertoggle=2..}] run scoreboard players reset @s weathertoggle