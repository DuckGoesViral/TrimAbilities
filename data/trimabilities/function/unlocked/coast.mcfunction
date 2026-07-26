scoreboard players add @s minecraftLevel 500
title @s title {"text": "+ 500 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
tellraw @s ["",{"text":"Coast Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\nNone."}]
tag @s add unlockedCoast
