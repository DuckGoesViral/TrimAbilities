scoreboard players add @s minecraftLevel 1000
title @s title {"text": "+ 1000 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players add @s progressWard 1
tellraw @s ["",{"text":"Vital Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\n+ "},{"score":{"name":"@s","objective":"progressWard"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":" Ward"}]
tag @s add unlockedVital