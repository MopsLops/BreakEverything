execute as @a[tag=god_heand] at @s run effect give @s fire_resistance 2 0 true
execute as @a[tag=god_heand] at @s run effect give @s water_breathing 2 0 true

execute as @a[tag=!god_heand,tag=lava_amulet] at @s run effect give @s fire_resistance 2 0 true
execute as @a[tag=!god_heand,tag=!lava_amulet] at @s run effect clear @s fire_resistance

execute as @a[tag=!god_heand,tag=water_amulet] at @s run effect give @s water_breathing 2 0 true
execute as @a[tag=!god_heand,tag=!water_amulet] at @s run effect clear @s water_breathing