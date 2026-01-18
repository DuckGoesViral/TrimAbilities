title @a title {"text":"BAILED OUT OF WILDS","bold":true,"color":"red"}
tp @s 0 200 0
tag @s add falling
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 50 2 1
scoreboard players reset @s wildsTimer