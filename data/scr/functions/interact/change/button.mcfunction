


execute at @s[type=cow] run function scr:interact/change/entity_button/cow
execute at @s[type=item_frame,nbt={Item:{}},tag=int] run function scr:interact/change/entity_button/item_frame
execute at @s[tag=!int] run function scr:interact/collide_block