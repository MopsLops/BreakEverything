execute at @s run function scr:delbind
execute at @s run function scr:delbuttons
execute at @s run function scr:skills_buttons
executeclient @a bind "/function scr:event" mouse.right SingleUse
executeclient @a bind "/function scr:attack" mouse.left SingleUse
#Сделал так что бы когда игрок зажимает ЛКМ держа топор вокруг него появляются партиклы (Из-за райкаста передумал использовать это)
# executeclient @a bind "/function scr:lava_axe_hold" mouse.left Repeating 1
