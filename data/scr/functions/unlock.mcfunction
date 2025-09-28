# execute at @s run cparticle @a PowerUp ~ ~ ~ 0 0 0 4.5
# execute at @s run playsound minecraft:scr.magic3 ambient @a ~ ~ ~ 1 0 1
# execute at @s run scale set pehkui:motion 0 @s


# execute at @s run text @s 10 "§eСЕРДЦЕ РАЗБЛОКИРОВАНО" "[w]/2-[tw]/2" "[h]/2-[th]/2+[th]/6" 100 2 0 1 .5
# execute at @s run image @s 10 message_center.png "[w]/2-[iw]/2" "[h/2]-[ih]/2" 90 "[w]" "[h]" 0 .7 .5


# execute at @s run timedt 80 'scale reset pehkui:motion @s'
# execute at @s run timedt 80 'text @s 10 "" "[w]/2-[tw]/2" "[h]/2-[th]/2+[th]/6" 100 2 0 1 .5'
# execute at @s run timedt 80 'textdel @s 10 1 0 .5'
# execute at @s run timedt 80 'imagedelete @s 10 .7 0 .5'

