scoreboard players add @s minecraftLevel 2000
title @s title {"text": "+ 2000 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
tellraw @s ["",{"text":"Tide Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\nNone."}]
tag @s add unlockedTide
