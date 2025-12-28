

execute unless score @s host = @s hostOld run attribute @s generic.max_health modifier remove 2-1-0-1-1
execute unless score @s host = @s hostOld run attribute @s generic.max_health modifier remove 2-1-0-2-1
execute unless score @s host = @s hostOld run attribute @s generic.max_health modifier remove 2-1-0-3-1
execute unless score @s host = @s hostOld run attribute @s generic.max_health modifier remove 2-1-1-4-1
execute unless score @s host = @s hostOld run effect clear @s resistance
execute unless score @s host = @s hostOld run effect clear @s slowness

execute if score @s host matches 0 run tag @s remove host

execute if score @s host matches 1 run attribute @s generic.max_health modifier add 2-1-0-1-1 "host_sub1_1" 1 add
execute if score @s host matches 2 run attribute @s generic.max_health modifier add 2-1-0-2-1 "host_sub2_1" 2 add
execute if score @s host matches 3 run attribute @s generic.max_health modifier add 2-1-0-3-1 "host_sub3_1" 3 add

execute if score @s host matches 4 if entity @s[tag=!unlockedHost] at @s run function trimabilities:unlocked/host

execute if score @s host matches 4 run effect give @s resistance infinite 0 true
execute if score @s host matches 4 run effect give @s slowness infinite 0 true
execute if score @s host matches 4 run attribute @s generic.max_health modifier add 2-1-1-4-1 "host_full_1" 4 add

scoreboard players operation @s hostOld = @s host
