title @s title {"text":"BAILED OUT OF WILDS","bold":true,"color":"red"}
spreadplayers 0 0 1 1 false @s
execute at @s run tp @s ~ ~10 ~
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 50 2 1
scoreboard players reset @s wildsTimer
tellraw @a ["",{"selector":"@s","bold":true,"color":"white"},{"text":" has been ","color":"red"},{"text":"BAILED OUT"},{"text":" of the wilds and is now at ","color":"red"},{"text":"spawn","color":"white"},{"text":"!","color":"red"}]
