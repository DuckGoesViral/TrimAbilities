
execute if score @s strayOld matches 4 run scoreboard players remove @s manaMax 150
execute if score @s strayOld matches 3 run scoreboard players remove @s manaMax 120
execute if score @s strayOld matches 2 run scoreboard players remove @s manaMax 80
execute if score @s strayOld matches 1 run scoreboard players remove @s manaMax 40

execute if score @s stray matches 0 run tag @s remove stray

execute if score @s stray matches 1 run scoreboard players add @s manaMax 40
execute if score @s stray matches 2 run scoreboard players add @s manaMax 80
execute if score @s stray matches 3 run scoreboard players add @s manaMax 120

execute if score @s stray matches 4 if entity @s[tag=!unlockedStray] at @s run function trimabilities:unlocked/stray

execute if score @s stray matches 4 run scoreboard players add @s manaMax 150

scoreboard players operation @s strayOld = @s stray

