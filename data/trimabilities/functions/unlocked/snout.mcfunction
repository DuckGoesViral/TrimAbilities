scoreboard players add @s minecraftLevel 2000
title @s title {"text": "+ 2000 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players add @s progressSilence 1
tellraw @s ["",{"text":"Snout Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\n+ "},{"score":{"name":"@s","objective":"progressSilence"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":" Silence"}]
tag @s add unlockedSnout
