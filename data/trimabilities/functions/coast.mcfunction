execute unless score @s coast = @s coastOld run effect clear @s water_breathing
execute unless score @s coast = @s coastOld run effect clear @s conduit_power

execute if score @s coast matches 0 run tag @s remove coast

execute if score @s coast matches 1.. run effect give @s water_breathing infinite 0 true


execute if score @s coast matches 4 if entity @s[tag=!unlockedCoast] at @s run function trimabilities:unlocked/coast

execute if score @s coast matches 4 run effect give @s conduit_power infinite 0 true

scoreboard players operation @s coastOld = @s coast



