execute at @s run function scr:delbind
execute at @s run function scr:delbuttons
execute at @s run function scr:skills_buttons
executeclient @a bind "/function scr:event" mouse.right SingleUse
executeclient @a bind "/function scr:attack" mouse.left SingleUse

executeclient @s bind "/execute at @s[tag=god_heand,tag=!cd1] run function scr:items/god_heand/air_amulet" r SingleUse
executeclient @s bind "/execute at @s[tag=god_heand,tag=!cd2] run function scr:items/god_heand/nether_amulet/nether_amulet" v SingleUse
executeclient @s bind "/execute at @s[tag=god_heand,tag=!cd3] run function scr:items/god_heand/end_amulet/ender_amulet_l" x SingleUse
executeclient @s bind "/execute at @s[tag=god_heand,tag=!cd4] run function scr:items/god_heand/end_amulet/ender_amulet_r" z SingleUse
executeclient @s bind "/execute at @s[tag=god_heand] run function scr:items/god_heand/timestop" b SingleUse
executeclient @s bind "/execute at @s[tag=god_heand] run function scr:items/god_heand/cloud_amulet" n SingleUse

executeclient @s bind "/execute at @s run function scr:raycast_set_blocks/raycast_start" y SingleUse
executeclient @s bind "/execute at @s run function scr:raycast_set_cloud/raycast_start" g SingleUse
executeclient @s bind "/execute at @s run function scr:raycast_set_moon/raycast_start" h SingleUse
#Сделал так что бы когда игрок зажимает ЛКМ держа топор вокруг него появляются партиклы (Из-за райкаста передумал использовать это)
# executeclient @a bind "/function scr:lava_axe_hold" mouse.left Repeating 1

