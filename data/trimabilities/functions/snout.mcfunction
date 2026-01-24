
execute unless score @s snout = @s snoutOld run attribute @s generic.max_health modifier remove 1-3-1-4-1
execute unless score @s snout = @s snoutOld run attribute @s generic.attack_damage modifier remove 1-3-0-1-3
execute unless score @s snout = @s snoutOld run attribute @s generic.attack_damage modifier remove 1-3-0-2-3
execute unless score @s snout = @s snoutOld run attribute @s generic.attack_damage modifier remove 1-3-0-3-3
execute unless score @s snout = @s snoutOld run effect clear @s strength
execute unless score @s snout = @s snoutOld run effect clear @s speed
execute unless score @s snout = @s snoutOld run effect clear @s fire_resistance


execute if score @s snout matches 0 run tag @s remove snout

execute if score @s snout matches 1..4 run effect give @s fire_resistance infinite 0 true
execute if score @s snout matches 1 run attribute @s generic.attack_damage modifier add 1-3-0-1-3 "snout_sub1_1" 1 add
execute if score @s snout matches 2 run attribute @s generic.attack_damage modifier add 1-3-0-2-3 "snout_sub2_1" 2 add
execute if score @s snout matches 3 run attribute @s generic.attack_damage modifier add 1-3-0-3-3 "snout_sub3_1" 3 add

execute if score @s snout matches 4 if entity @s[tag=!unlockedSnout] at @s run function trimabilities:unlocked/snout

execute if score @s snout matches 4 run effect give @s strength infinite 1 true
execute if score @s snout matches 4 run effect give @s speed infinite 0 true
execute if score @s snout matches 4 run attribute @s generic.max_health modifier add 1-3-1-4-1 "snout_full_1" -2 add

scoreboard players operation @s snoutOld = @s snout


