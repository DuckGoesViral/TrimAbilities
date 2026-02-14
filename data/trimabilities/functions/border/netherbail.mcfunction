execute store result storage trimabilities:border nether.x int 8 run data get entity @s Pos[0]
execute store result storage trimabilities:border nether.y int 1 run data get entity @s Pos[1]
execute store result storage trimabilities:border nether.z int 8 run data get entity @s Pos[2]

title @s title {"text":"BAILED OUT OF WILDS","bold":true,"color":"red"}
execute at @s in minecraft:overworld run function trimabilities:border/nethertp with storage trimabilities:border nether
execute at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0 10
execute at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 50 2 1
scoreboard players reset @s netherBorder
tellraw @a ["",{"selector":"@s","bold":true,"color":"white"},{"text":" has been ","color":"red"},{"text":"BAILED OUT"},{"text":" of the nether wilds and is now in ","color":"red"},{"text":"the overworld","color":"white"},{"text":"!","color":"red"}]
