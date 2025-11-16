function trimabilities:scoreboardlevels
tellraw @s ["",{"text":"----------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" Necromancy Level Up","bold":true,"color":"yellow"},{"text":" 3\u27a1","color":"dark_gray"},{"text":"4","color":"yellow"},{"text":"\n\n"},{"text":" REWARDS","color":"green"},{"text":"\n \u0020+ None.\n\n"},{"text":"----------------------------------","bold":true,"color":"dark_aqua"}]
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players remove @s necromancerLevel 2500