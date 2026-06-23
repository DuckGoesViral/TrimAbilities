scoreboard players add @s minecraftLevel 5000
title @s title {"text": "+ 5000 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
tellraw @s ["",{"text":"Vex Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\nNone."}]
tag @s add unlockedVex
