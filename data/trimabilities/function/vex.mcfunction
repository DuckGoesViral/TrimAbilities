execute unless score @s vex = @s vexOld run effect clear @s invisibility
execute unless score @s vex = @s vexOld run effect clear @s weakness
execute unless score @s vex = @s vexOld run attribute @s scale modifier remove 5-1-0-2-4
execute unless score @s vex = @s vexOld run attribute @s scale modifier remove 5-1-0-3-4
execute unless score @s vex = @s vexOld run attribute @s scale modifier remove 5-1-1-4-4
execute unless score @s vex = @s vexOld run attribute @s camera_distance modifier remove 5-1-0-2-5
execute unless score @s vex = @s vexOld run attribute @s camera_distance modifier remove 5-1-0-3-5
execute unless score @s vex = @s vexOld run attribute @s camera_distance modifier remove 5-1-1-4-5


execute if score @s vex matches 0 run tag @s remove vex

execute if score @s vex matches 1..3 run effect give @s invisibility infinite 0 false

execute if score @s vex matches 2 run attribute @s scale modifier add 5-1-0-2-4 -0.2 add_value
execute if score @s vex matches 2 run attribute @s camera_distance modifier add 5-1-0-2-5 1 add_value
execute if score @s vex matches 2 run effect give @s weakness infinite 0 true
execute if score @s vex matches 3 run attribute @s scale modifier add 5-1-0-3-4 -0.4 add_value
execute if score @s vex matches 3 run attribute @s camera_distance modifier add 5-1-0-3-5 2.5 add_value
execute if score @s vex matches 3 run effect give @s weakness infinite 1 true

execute if score @s vex matches 4 if entity @s[tag=!unlockedVex] at @s run function trimabilities:unlocked/vex

execute if score @s vex matches 4 run attribute @s scale modifier add 5-1-1-4-4 -0.7 add_value
execute if score @s vex matches 4 run effect give @s weakness infinite 2 true
execute if score @s vex matches 4 run attribute @s camera_distance modifier add 5-1-1-4-5 9 add_value
execute if score @s vex matches 4 run effect give @s invisibility infinite 0 true

scoreboard players operation @s vexOld = @s vex




