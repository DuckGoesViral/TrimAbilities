
execute at @s as @e[type=item,nbt={Item:{tag:{Trim:{pattern:"minecraft:coast"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{tag:{Trim:{pattern:""}}}}


scoreboard players remove @s coast 1
scoreboard players add @s recoveryCoast 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
