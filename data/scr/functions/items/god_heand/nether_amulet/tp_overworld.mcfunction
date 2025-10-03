execute at @s in minecraft:overworld run teleport @s ~ ~ ~
execute at @s run tag @s add cd_tp
timedt 2 'tag @a remove cd_tp'