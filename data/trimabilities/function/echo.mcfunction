
execute if score @s echoOld matches 4 run scoreboard players remove @s manaMax 200
execute if score @s echoOld matches 3 run scoreboard players remove @s manaMax 150
execute if score @s echoOld matches 2 run scoreboard players remove @s manaMax 100
execute if score @s echoOld matches 1 run scoreboard players remove @s manaMax 50

execute if score @s echo matches 0 run tag @s remove echo

execute if score @s echo matches 1 run scoreboard players add @s manaMax 50
execute if score @s echo matches 2 run scoreboard players add @s manaMax 100
execute if score @s echo matches 3 run scoreboard players add @s manaMax 150

execute if score @s echo matches 4 if entity @s[tag=!unlockedEcho] at @s run function trimabilities:unlocked/echo

execute if score @s echo matches 4 run scoreboard players add @s manaMax 200

scoreboard players operation @s echoOld = @s echo

