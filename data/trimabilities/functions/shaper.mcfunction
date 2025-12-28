
execute unless score @s shaper = @s shaperOld run attribute @s generic.attack_damage modifier remove 1-1-0-1-3
execute unless score @s shaper = @s shaperOld run attribute @s generic.attack_damage modifier remove 1-1-0-2-3
execute unless score @s shaper = @s shaperOld run attribute @s generic.attack_damage modifier remove 1-1-0-3-3
execute unless score @s shaper = @s shaperOld run attribute @s generic.max_health modifier remove 1-1-1-4-1
execute unless score @s shaper = @s shaperOld run effect clear @s strength

execute if score @s shaper matches 0 run tag @s remove shaper

execute if score @s shaper matches 1 run attribute @s generic.attack_damage modifier add 1-1-0-1-3 "shaper_sub1_1" .5 add
execute if score @s shaper matches 2 run attribute @s generic.attack_damage modifier add 1-1-0-2-3 "shaper_sub2_1" 1 add
execute if score @s shaper matches 3 run attribute @s generic.attack_damage modifier add 1-1-0-3-3 "shaper_sub3_1" 1.5 add

execute if score @s shaper matches 4 if entity @s[tag=!unlockedShaper] at @s run function trimabilities:unlocked/shaper

execute if score @s shaper matches 4 run effect give @s strength infinite 0 true
execute if score @s shaper matches 4 run attribute @s generic.max_health modifier add 1-1-1-4-1 "shaper_full_1" -4 add

scoreboard players operation @s shaperOld = @s shaper
