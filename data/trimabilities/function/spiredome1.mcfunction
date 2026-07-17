
tag @a[distance=..10] add domed

scoreboard players reset @s domeCooldown

scoreboard players reset @a[distance=..10] spireDeath

summon item_display ~ ~1 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"heart_of_the_sea",count:1b},Tags:["domeGenerator"]}
summon minecraft:interaction ~ ~.5 ~ {Tags:["domeInteraction"],width:1f,height:1f}
scoreboard players set @e[type=item_display,tag=domeGenerator,limit=1,sort=nearest] domeHealth 100
summon text_display ~ ~1.5 ~ {billboard:"center",text:[{"bold":true,"color":"green","text":"100%"},{"bold":false,"color":"white","text":" Dome Health Remaining"}],Tags:["domeHealth"]}

summon marker ~ ~6 ~ {Tags:["domeBarrier1","domeBarrier"]}
summon marker ~ ~5.5 ~ {Tags:["domeBarrier2","domeBarrier"]}
summon marker ~ ~5 ~ {Tags:["domeBarrier3","domeBarrier"]}
summon marker ~ ~4.5 ~ {Tags:["domeBarrier4","domeBarrier"]}
summon marker ~ ~4 ~ {Tags:["domeBarrier1","domeBarrier"]}
summon marker ~ ~3.5 ~ {Tags:["domeBarrier2","domeBarrier"]}
summon marker ~ ~2.5 ~ {Tags:["domeBarrier3","domeBarrier"]}
summon marker ~ ~2 ~ {Tags:["domeBarrier4","domeBarrier"]}


execute as @e[type=marker,tag=domeBarrier1] run rotate @s 0 0
execute as @e[type=marker,tag=domeBarrier2] run rotate @s 90 0
execute as @e[type=marker,tag=domeBarrier3] run rotate @s 180 0
execute as @e[type=marker,tag=domeBarrier4] run rotate @s 270 0




