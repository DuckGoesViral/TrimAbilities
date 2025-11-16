function trimabilities:scoreboardlevels
tellraw @s ["",{"text":"----------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" Minecraft Level Up","bold":true,"color":"yellow"},{"text":" 5\u27a1","color":"dark_gray"},{"text":"6","color":"yellow"},{"text":"\n\n"},{"text":" REWARDS","color":"green"},{"text":"\n+ ("},{"score":{"name":"@s","objective":"progressSnout"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":") Snout"},{"text":"\n+ ("},{"score":{"name":"@s","objective":"progressEye"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":") Eye"},{"text":"\n \u0020+ Increased XP Gain For Category Levels\n\n"},{"text":"----------------------------------","bold":true,"color":"dark_aqua"}]
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players remove @s minecraftLevel 10000

