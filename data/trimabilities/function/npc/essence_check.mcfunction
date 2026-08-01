

execute store success score @s essenceCheck run clear @s debug_stick

execute if score @s essenceCheck matches 1 run scoreboard players add @s essenceAmount 1

execute if score @s essenceCheck matches 1 run function trimabilities:npc/essence_check
