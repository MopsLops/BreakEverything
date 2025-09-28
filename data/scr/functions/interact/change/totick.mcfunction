execute as @a at @s run function scr:interact/raycast_start

execute as @e[type=item_frame,tag=!interact_frame,tag=int] at @s run data merge entity @s {Invisible:1b,"pehkui:scale_data_types":{"pehkui:interaction_box_height":{initial:32.0f, scale: 32.0f, targer: 32.0f}},Silent:1b,Tags:["interact_frame","int"]}
# execute as @a[nbt=!{SelectedItem:{}}] at @s run function scr:interact/raycast_start
# execute as @a[nbt={SelectedItem:{}}] at @s run function scr:interact/clearbutton