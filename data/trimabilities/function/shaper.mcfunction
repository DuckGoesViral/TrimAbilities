
execute unless score @s shaper = @s shaperOld run attribute @s attack_damage modifier remove 1-1-0-1-3
execute unless score @s shaper = @s shaperOld run attribute @s attack_damage modifier remove 1-1-0-2-3
execute unless score @s shaper = @s shaperOld run attribute @s attack_damage modifier remove 1-1-0-3-3
execute unless score @s shaper = @s shaperOld run attribute @s max_health modifier remove 1-1-1-4-1
execute unless score @s shaper = @s shaperOld run effect clear @s strength

execute if score @s shaper matches 0 run tag @s remove shaper

execute if score @s shaper matches 1 run attribute @s attack_damage modifier add 1-1-0-1-3 .5 add_value
execute if score @s shaper matches 2 run attribute @s attack_damage modifier add 1-1-0-2-3 1 add_value
execute if score @s shaper matches 3 run attribute @s attack_damage modifier add 1-1-0-3-3 1.5 add_value

execute if score @s shaper matches 4 if entity @s[tag=!unlockedShaper] at @s run function trimabilities:unlocked/shaper

execute if score @s shaper matches 4 run effect give @s strength infinite 0 true
execute if score @s shaper matches 4 run attribute @s max_health modifier add 1-1-1-4-1 -4 add_value

scoreboard players operation @s shaperOld = @s shaper
