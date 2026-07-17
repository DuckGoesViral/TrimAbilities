
execute unless score @s silence = @s silenceOld run attribute @s attack_damage modifier remove 1-4-0-1-3
execute unless score @s silence = @s silenceOld run attribute @s attack_damage modifier remove 1-4-0-2-3
execute unless score @s silence = @s silenceOld run attribute @s attack_damage modifier remove 1-4-0-3-3
execute unless score @s silence = @s silenceOld run effect clear @s strength
execute unless score @s silence = @s silenceOld run effect clear @s speed
execute unless score @s silence = @s silenceOld run effect clear @s fire_resistance


execute if score @s silence matches 0 run tag @s remove silence

execute if score @s silence matches 1..2 run effect give @s speed infinite 0 true
execute if score @s silence matches 3 run effect give @s speed infinite 1 true
execute if score @s silence matches 1 run attribute @s attack_damage modifier add 1-4-0-1-3 1.5 add_value
execute if score @s silence matches 2 run attribute @s attack_damage modifier add 1-4-0-2-3 3 add_value
execute if score @s silence matches 3 run attribute @s attack_damage modifier add 1-4-0-3-3 4.5 add_value

execute if score @s silence matches 4 if entity @s[tag=!unlockedSilence] at @s run function trimabilities:unlocked/silence

execute if score @s silence matches 4 run effect give @s strength infinite 1 true
execute if score @s silence matches 4 run effect give @s speed infinite 1 true

scoreboard players operation @s silenceOld = @s silence


execute if score @s silence matches 4 unless score @s cooldownSilence matches 120.. if score @s sneakTrigger matches 2.. run tellraw @s ["",{"text":"This ability is ","color":"red"},{"text":"not available","bold":true,"color":"red"}]
execute if score @s silence matches 4 if score @s cooldownSilence matches 120.. if score @s sneakTrigger matches 2.. run function trimabilities:silence_boom
execute if score @s silence matches 4 if score @s cooldownSilence matches 119 run tellraw @s ["",{"text":"\""},{"text":"Sonic Boom","bold":true,"color":"dark_purple"},{"text":"\" is now "},{"text":"available","color":"green"},{"text":"!"}]
execute if score @s silence matches 4 unless score @s cooldownSilence matches 120.. run scoreboard players add @s cooldownSilence 1



