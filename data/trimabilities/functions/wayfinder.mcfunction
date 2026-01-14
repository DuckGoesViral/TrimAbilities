


execute if score @s wayfinder matches 0 run tag @s remove wayfinder

execute if score @s wayfinder matches 1 run scoreboard players add @s subPower 1
execute if score @s wayfinder matches 2 run scoreboard players add @s subPower 2
execute if score @s wayfinder matches 3 run scoreboard players add @s subPower 3

execute if score @s wayfinder matches 4 if entity @s[tag=!unlockedWayfinder] at @s run function trimabilities:unlocked/wayfinder


scoreboard players operation @s wayfinderOld = @s wayfinder

