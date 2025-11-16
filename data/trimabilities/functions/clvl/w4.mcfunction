function trimabilities:scoreboardlevels
tellraw @s ["",{"text":"----------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" Warrior Level Up","bold":true,"color":"yellow"},{"text":" 3\u27a1","color":"dark_gray"},{"text":"4","color":"yellow"},{"text":"\n\n"},{"text":" REWARDS","color":"green"},{"text":"\n \u0020+ Speed For Dune\n \u0020+ Health For Snout\n\n"},{"text":"----------------------------------","bold":true,"color":"dark_aqua"}]
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players remove @s warriorLevel 5000