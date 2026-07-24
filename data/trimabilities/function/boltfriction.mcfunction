
scoreboard players operation @s boltMSOld -= @s boltMS

execute if score @s boltMSOld matches -3..0 run scoreboard players set @s boltMSOld 0

execute store result storage trimabilities:bolt damage int 1 run scoreboard players get @s boltMSOld

execute if score @s boltMSOld matches 5.. run function trimabilities:boltdamage with storage trimabilities:bolt

scoreboard players operation @s boltMSOld *= 100 constants

scoreboard players operation @s boltSpeed -= @s boltMSOld


