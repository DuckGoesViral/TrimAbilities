execute unless score @s tide = @s tideOld run effect clear @s water_breathing
execute unless score @s tide = @s tideOld run effect clear @s conduit_power
execute unless score @s tide = @s tideOld run effect clear @s dolphins_grace

execute if score @s tide matches 0 run tag @s remove tide

execute if score @s tide matches 1.. run effect give @s water_breathing infinite 0 true
execute if score @s tide matches 2.. run effect give @s conduit_power infinite 0 true


execute if score @s tide matches 4 if entity @s[tag=!unlockedTide] at @s run function trimabilities:unlocked/tide

execute if score @s tide matches 4 run effect give @s dolphins_grace infinite 0 true

scoreboard players operation @s tideOld = @s tide



