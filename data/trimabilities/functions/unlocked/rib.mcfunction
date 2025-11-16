scoreboard players add @s minecraftLevel 2000
title @s title {"text": "+ 2000 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players add @s progressVex 1
tellraw @s ["",{"text":"Rib Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\n+ "},{"score":{"name":"@s","objective":"progressVex"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":" Vex"}]
tag @s add unlockedRib
