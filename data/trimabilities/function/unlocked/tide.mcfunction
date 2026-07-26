scoreboard players add @s minecraftLevel 1500
title @s title {"text": "+ 1500 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
tellraw @s ["",{"text":"Tide Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\nNone."}]
tag @s add unlockedTide
