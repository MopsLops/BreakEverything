tp @s ~ ~-255 ~
particle minecraft:poof ~ ~ ~ .5 .5 .5 0.1 80


# execute at @s run setblock ~ ~ ~ fire replace

execute as @a[tag=raycasting] at @s run playsound minecraft:entity.blaze.death player @s ~ ~ ~ 1 0.4


scoreboard players set .distance dist 1000
