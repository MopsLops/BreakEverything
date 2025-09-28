#particle explosion ~ ~ ~ 0 0 0 0 5

execute at @s[type=cow] run function scr:interact/change/entity_click/cow
execute at @s[type=item_frame,nbt={Item:{}},tag=int] run function scr:interact/change/entity_click/item_frame
execute as @a[tag=raycasting,limit=1,sort=nearest] at @s run function scr:interact/collide_block
tag @a[tag=raycasting,limit=1,sort=nearest] add interact


scoreboard players set .distance dist 1000
