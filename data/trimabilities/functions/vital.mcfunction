
execute unless score @s vital = @s vitalOld run attribute @s generic.max_health modifier remove 2-1-0-1-1
execute unless score @s vital = @s vitalOld run attribute @s generic.max_health modifier remove 2-1-0-2-1
execute unless score @s vital = @s vitalOld run attribute @s generic.max_health modifier remove 2-1-0-3-1
execute unless score @s vital = @s vitalOld run attribute @s generic.max_health modifier remove 2-1-1-4-1
execute unless score @s vital = @s vitalOld run effect clear @s resistance
execute unless score @s vital = @s vitalOld run effect clear @s slowness

execute if score @s vital matches 0 run tag @s remove vital

execute if score @s vital matches 1 run attribute @s generic.max_health modifier add 2-2-0-1-1 "vital_sub1_2" 2 add
execute if score @s vital matches 2 run attribute @s generic.max_health modifier add 2-2-0-2-1 "vital_sub2_2" 4 add
execute if score @s vital matches 3 run attribute @s generic.max_health modifier add 2-2-0-3-1 "vital_sub3_2" 6 add

execute if score @s vital matches 4 if entity @s[tag=!unlockedVital] at @s run function trimabilities:unlocked/vital


execute if score @s vital matches 4 run attribute @s generic.max_health modifier add 2-1-1-4-1 "vital_full_1" 14 add

scoreboard players operation @s vitalOld = @s vital
