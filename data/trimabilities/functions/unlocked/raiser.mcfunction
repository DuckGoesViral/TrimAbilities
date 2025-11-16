scoreboard players add @s minecraftLevel 500
title @s title {"text": "+ 500 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players add @s progressRib 1
tellraw @s ["",{"text":"Raiser Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\n+ "},{"score":{"name":"@s","objective":"progressRib"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":" Rib"}]
tag @s add unlockedRaiser
