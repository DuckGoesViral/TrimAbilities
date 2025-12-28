execute unless score @s ravine = @s ravineOld run effect clear @s haste


execute if score @s ravine matches 0 run tag @s remove ravine

execute if score @s ravine matches 1.. run effect give @s haste infinite 0 true


execute if score @s ravine matches 4 if entity @s[tag=!unlockedRavine] at @s run function trimabilities:unlocked/ravine


scoreboard players operation @s ravineOld = @s ravine



