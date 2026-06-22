
execute unless score @s vital = @s vitalOld run attribute @s max_health modifier remove 2-2-0-1-1
execute unless score @s vital = @s vitalOld run attribute @s max_health modifier remove 2-2-0-2-1
execute unless score @s vital = @s vitalOld run attribute @s max_health modifier remove 2-2-0-3-1
execute unless score @s vital = @s vitalOld run attribute @s max_health modifier remove 2-2-1-4-1
execute unless score @s vital = @s vitalOld run effect clear @s resistance
execute unless score @s vital = @s vitalOld run effect clear @s slowness

execute if score @s vital matches 0 run tag @s remove vital

execute if score @s vital matches 1 run attribute @s max_health modifier add 2-2-0-1-1 2 add_value
execute if score @s vital matches 2 run attribute @s max_health modifier add 2-2-0-2-1 4 add_value
execute if score @s vital matches 3 run attribute @s max_health modifier add 2-2-0-3-1 6 add_value

execute if score @s vital matches 4 if entity @s[tag=!unlockedVital] at @s run function trimabilities:unlocked/vital


execute if score @s vital matches 4 run attribute @s max_health modifier add 2-2-1-4-1 14 add_value

scoreboard players operation @s vitalOld = @s vital
