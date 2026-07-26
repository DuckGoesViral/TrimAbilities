function trimabilities:scoreboardlevels
tellraw @s ["",{"text":"----------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" Tank Level Up","bold":true,"color":"yellow"},{"text":" 3\u27a1","color":"dark_gray"},{"text":"4","color":"yellow"},{"text":"\n\n"},{"text":" REWARDS","color":"green"},{"text":"\n+ ("},{"score":{"name":"@s","objective":"progressWard"}},{"text":"/"},{"text":"3","color":"yellow"},{"text":") Ward\n"},{"text":"----------------------------------","bold":true,"color":"dark_aqua"}]
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0
scoreboard players remove @s tankLevel 2500
