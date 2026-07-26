scoreboard players add @s minecraftLevel 2500
title @s title {"text": "+ 2500 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players add @s progressStorm 1
tellraw @s ["",{"text":"Echo Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\n+ "},{"score":{"name":"@s","objective":"progressStorm"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":" Storm"}]
tag @s add unlockedEcho
