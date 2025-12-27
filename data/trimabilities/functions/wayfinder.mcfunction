execute as @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add wayfinder
execute if entity @a[tag=wayfinder,tag=!unlockedWayfinder] as @a[tag=wayfinder,tag=!unlockedWayfinder] at @s run function trimabilities:unlocked/wayfinder
execute as @a[tag=wayfinder] run function trimabilities:wayfinderarrow



scoreboard players set @s wayfinderDamage 0

execute if score @s wayfinder matches 0 run tag @s remove wayfinder

execute if score @s wayfinder matches 1 run scoreboard players add @s wayfinderDamage 1
execute if score @s wayfinder matches 2 run scoreboard players add @s wayfinderDamage 2
execute if score @s wayfinder matches 3 run scoreboard players add @s wayfinderDamage 3

execute if score @s wayfinder matches 4 if entity @s[tag=!unlockedWayfinder] at @s run function trimabilities:unlocked/wayfinder

execute if score @s wayfinder matches 4 run scoreboard players add @s wayfinderDamage 5

function trimabilities:wayfinderarrow

scoreboard players operation @s wayfinderOld = @s wayfinder
