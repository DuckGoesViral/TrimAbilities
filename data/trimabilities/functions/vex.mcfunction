execute unless score @s vex = @s vexOld run effect clear @s slow_falling
execute unless score @s vex = @s vexOld run effect clear @s invisibility

execute if score @s vex matches 0 run tag @s remove vex

execute if score @s vex matches 1.. run effect give @s slow_falling infinite 0 true
execute if score @s vex matches 1.. run effect give @s invisibility infinite 0 true


execute if score @s vex matches 4 if entity @s[tag=!unlockedVex] at @s run function trimabilities:unlocked/vex

execute if score @s vex matches 4 at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:barrier
execute unless score @s vexDamage matches 1.. if score @s vex matches 4 at @s unless predicate trimabilities:is_sneaking run fill ~ ~-1 ~ ~ ~-1 ~ barrier replace minecraft:air
execute if score @s vex matches 4 at @s if predicate trimabilities:is_sneaking run fill ~ ~-.5 ~ ~ ~-.5 ~ air replace minecraft:barrier

scoreboard players operation @s vexOld = @s vex




