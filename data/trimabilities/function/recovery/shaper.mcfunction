

execute at @s as @e[type=item,nbt={Item:{components:{"minecraft:trim":{pattern:"minecraft:shaper"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{components:{"minecraft:trim":{pattern:""}}}}


scoreboard players remove @s shaper 1
scoreboard players add @s recoveryShaper 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
