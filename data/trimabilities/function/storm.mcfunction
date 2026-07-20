
execute if score @s stormOld matches 4 run scoreboard players remove @s manaMax 250
execute if score @s stormOld matches 3 run scoreboard players remove @s manaMax 195
execute if score @s stormOld matches 2 run scoreboard players remove @s manaMax 130
execute if score @s stormOld matches 1 run scoreboard players remove @s manaMax 65

execute if score @s storm matches 0 run tag @s remove storm

execute if score @s storm matches 1 run scoreboard players add @s manaMax 65
execute if score @s storm matches 2 run scoreboard players add @s manaMax 130
execute if score @s storm matches 3 run scoreboard players add @s manaMax 195

execute if score @s storm matches 4 if entity @s[tag=!unlockedStorm] at @s run function trimabilities:unlocked/storm

execute if score @s storm matches 4 run scoreboard players add @s manaMax 250

scoreboard players operation @s stormOld = @s storm

