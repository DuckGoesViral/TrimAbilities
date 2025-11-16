scoreboard players add @s minecraftLevel 500
title @s title {"text": "+ 500 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players add @s progressTide 1
tellraw @s ["",{"text":"Host Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\n+ "},{"score":{"name":"@s","objective":"progressTide"}},{"text":"/"},{"text":"2","color":"yellow"},{"text":" Tide"}]
tag @s add unlockedCoast
