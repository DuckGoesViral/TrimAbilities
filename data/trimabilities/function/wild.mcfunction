
execute unless score @s wild = @s wildOld run effect clear @s jump_boost
execute unless score @s wild = @s wildOld run effect clear @s speed

execute if score @s wild matches 0 run tag @s remove wild

execute if score @s wild matches 1 run scoreboard players add @s subPower 2
execute if score @s wild matches 2 run scoreboard players add @s subPower 4
execute if score @s wild matches 3 run scoreboard players add @s subPower 6

execute if score @s wild matches 4 if entity @s[tag=!unlockedWild] at @s run function trimabilities:unlocked/wild
execute if score @s wild matches 4 run effect give @s jump_boost infinite 3 true
execute if score @s wild matches 4 run effect give @s speed infinite 0 true

scoreboard players operation @s wildOld = @s wild




