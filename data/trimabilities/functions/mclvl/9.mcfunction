function trimabilities:scoreboardlevels
tellraw @s ["",{"text":"----------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" Minecraft Level Up","bold":true,"color":"yellow"},{"text":" 8\u27a1","color":"dark_gray"},{"text":"9","color":"yellow"},{"text":"\n\n"},{"text":" REWARDS","color":"green"},{"text":"\n \u0020+ Increased XP Gain For Category Levels\n\n"},{"text":"----------------------------------","bold":true,"color":"dark_aqua"}]
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players remove @s minecraftLevel 35000