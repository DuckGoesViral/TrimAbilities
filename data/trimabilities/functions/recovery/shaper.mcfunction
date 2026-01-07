

execute at @s as @e[type=item,nbt={Item:{tag:{Trim:{pattern:"minecraft:shaper"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{tag:{Trim:{pattern:""}}}}


scoreboard players remove @s shaper 1
scoreboard players add @s recoveryShaper 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
