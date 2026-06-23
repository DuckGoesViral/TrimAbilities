scoreboard players add @s minecraftLevel 1000
title @s title {"text": "+ 1000 Mc XP","color": "green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players add @s progressEcho 1
tellraw @s ["",{"text":"Stray Unlocked:","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Rewards:","color":"green"},{"text":"\n+ "},{"score":{"name":"@s","objective":"progressEcho"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":" Echo"}]
tag @s add unlockedStray
