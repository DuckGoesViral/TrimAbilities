scoreboard players add @s minecraftLevel 500
title @s title {"text": "+ 500 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players add @s progressWild 1
tellraw @s ["",{"text":"Wayfinder Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\n+ "},{"score":{"name":"@s","objective":"progressWild"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":" Wild"}]
tag @s add unlockedWayfinder