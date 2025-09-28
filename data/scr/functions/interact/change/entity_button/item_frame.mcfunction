# tp @s[tag=!finish] ~ ~ ~ facing entity @a[tag=raycasting,limit=1,sort=nearest]

# execute at @s run execute as @a[tag=raycasting,tag=!button,tag=!interact] at @s run tellraw @a "Вывод текста и картинки"
# execute at @s run text @a[tag=raycasting,tag=!button,tag=!interact] 0 "§6[ПКМ] §fВзять [name]" "24" "[h]-25" 100 0.85 0 1 .1
execute at @s run text @a[tag=raycasting,tag=!button,tag=!interact] 0 "ПКМ: Взять [name]" "24" "[h]-30" 100 0.85 0 1 .1
execute at @s run image @a[tag=raycasting,tag=!button,tag=!interact] 0 bg_btn.png "[tx0]-[th0]" "[ty0]-[th0]" 90 "[tw0]+26" "[th]*2.7" 0 .5 .1
execute at @s run image @a[tag=raycasting,tag=!button,tag=!interact] 1 hand.png "[tx0]+[tw0]+[th0]/3" "[iy0]+[ih]/2" 90 "[ih0]/2" "[ih0]/2" 0 0.7 .1
execute at @s run execute as @a[tag=raycasting,tag=!button] at @s run tag @s add button

