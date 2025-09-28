


# execute align xyz positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ white_terracotta
text @s[tag=button] 0 "" 0 0 0 1
textdel @s[tag=button] 0 .5 0 .5
imagedelete @s[tag=button] 0 .5 0 .5
imagedelete @s[tag=button] 1 .5 0 .5
tag @s remove button

tag @s remove interact

scoreboard players set .distance dist 1001
