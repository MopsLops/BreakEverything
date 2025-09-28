tp @s[tag=!finish] ~ ~ ~ facing entity @a[tag=raycasting,limit=1,sort=nearest]

# execute at @s[tag=!quest,tag=!finish] run text @a[tag=raycasting,tag=!button,tag=!interact] 0 "ПКМ: Торговать с [name]" "24" "[h]-25" 100 0.85 0 1 .1
# execute at @s[tag=!quest,tag=!finish] run image @a[tag=raycasting,tag=!button,tag=!interact] 0 bg_btn.png "[tx]-9" "[ty]-9" 90 "[tw]+16" "[th]+16" 0 .5 .1
# execute at @s[tag=!quest,tag=!finish] run execute as @e[tag=raycasting,limit=1,sort=nearest,tag=!button] at @s run tag @s add button


execute at @s run text @a[tag=raycasting,tag=!button,tag=!interact] 0 "ПКМ: Поговорить с [name]" "24" "[h]-50" 100 0.85 0 1 .1
execute at @s run image @a[tag=raycasting,tag=!button,tag=!interact] 0 bg_btn.png "[tx0]-[th0]" "[ty0]-[th0]" 90 "[tw0]+[iw1]*2.7" "[th]*2.7" 0 .5 .1
execute at @s run image @a[tag=raycasting,tag=!button,tag=!interact] 1 dialogue.png "[tx0]+[tw0]+[th0]/3" "[iy0]+[ih]/2" 90 "[ih0]/2" "[ih0]/2" 0 0.7 .1
execute at @s[tag=!quest,tag=!finish] run execute as @e[tag=raycasting,limit=1,sort=nearest,tag=!button] at @s run tag @s add button

# execute at @s[tag=quest,tag=!finish] run execute as @e[tag=raycasting,limit=1,sort=nearest,tag=!button,tag=!interact] at @s run text @s 0 "ПКМ: Отдать молоко §cКорова" "24" "[h]-25" 100 0.85
# execute at @s[tag=quest,tag=!finish] run execute as @e[tag=raycasting,limit=1,sort=nearest,tag=!button,tag=!interact] at @s run image @s 0 bg_test4.png "16" "[h]-32" 90 132 20
# execute at @s[tag=quest,tag=!finish] run execute as @e[tag=raycasting,limit=1,sort=nearest,tag=!button] at @s run tag @s add button
