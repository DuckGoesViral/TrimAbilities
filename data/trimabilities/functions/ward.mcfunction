
execute unless score @s ward = @s wardOld run attribute @s generic.max_health modifier remove 2-3-0-1-1
execute unless score @s ward = @s wardOld run attribute @s generic.max_health modifier remove 2-3-0-2-1
execute unless score @s ward = @s wardOld run attribute @s generic.max_health modifier remove 2-3-0-3-1
execute unless score @s ward = @s wardOld run attribute @s generic.max_health modifier remove 2-3-1-4-1
execute unless score @s ward = @s wardOld run effect clear @s resistance
execute unless score @s ward = @s wardOld run effect clear @s slowness

execute if score @s ward matches 0 run tag @s remove ward

execute if score @s ward matches 1 run attribute @s generic.max_health modifier add 2-3-0-1-1 "ward_sub1_2" 3 add
execute if score @s ward matches 2 run attribute @s generic.max_health modifier add 2-3-0-2-1 "ward_sub2_2" 6 add
execute if score @s ward matches 3 run attribute @s generic.max_health modifier add 2-3-0-3-1 "ward_sub3_2" 9 add

execute if score @s ward matches 4 if entity @s[tag=!unlockedWard] at @s run function trimabilities:unlocked/ward

execute if score @s ward matches 4 run attribute @s generic.max_health modifier add 2-3-1-4-1 "ward_full_1" 8 add
execute if score @s ward matches 4 run effect give @s resistance infinite 1 true
execute if score @s ward matches 4 run effect give @s slowness infinite 0 true



execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run effect clear @s
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run effect give @s regeneration 6 1 true
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run effect give @s absorption 60 1 true
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run effect give @s speed 6 1 true
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run effect give @s strength 6 1 true
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run effect give @s resistance 6 3 true
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. at @s run particle minecraft:totem_of_undying ~ ~1 ~ .1 .1 .1 0.5 100 normal @a[distance=..30]
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run tellraw @s ["",{"text":"SAVED","bold":true,"color":"green"},{"text":" by your Ward trim's \""},{"text":"Last Stand","bold":true,"color":"dark_purple"},{"text":"\" ability!"}]
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run tellraw @s ["",{"text":"This ability will ","color":"red"},{"text":"not activate","bold":true,"color":"red"},{"text":" for the next ","color":"red"},{"text":"10","bold":true,"color":"red"},{"text":" minutes D:","color":"red"}]
execute if score @s ward matches 4 if score @s healthTracker matches ..4 if score @s cooldownWard matches 2400.. run scoreboard players set @s cooldownWard 0

execute if score @s ward matches 4 if score @s cooldownWard matches 2399 run tellraw @s ["",{"text":"\""},{"text":"Last Stand","bold":true,"color":"dark_purple"},{"text":"\" is now "},{"text":"available","color":"green"},{"text":"!"}]
execute if score @s ward matches 4 unless score @s cooldownWard matches 2400.. run scoreboard players add @s cooldownWard 1


scoreboard players operation @s wardOld = @s ward
