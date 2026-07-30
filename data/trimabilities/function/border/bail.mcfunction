title @s title {"text":"BAILED OUT OF WILDS","bold":true,"color":"red"}
spreadplayers 0 0 1 32 false @s
effect give @s minecraft:slow_falling 10 1 true
execute at @s run tp @s ~ ~50 ~
particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 10 normal
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 50 2 1
scoreboard players reset @s wildsTimer
tellraw @a ["",{"selector":"@s","bold":true,"color":"#dd0000"},{"text":" has been ","color":"white"},{"text":"BAILED OUT","color":"#f3822b"},{"text":" of the wilds and is now at ","color":"white"},{"text":"spawn","color":"#f3822b"},{"text":"!","color":"white"}]
