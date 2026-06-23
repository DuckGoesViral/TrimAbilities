

execute at @s as @e[type=item,nbt={Item:{tag:{Trim:{pattern:"minecraft:raiser"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{tag:{Trim:{pattern:""}}}}


scoreboard players remove @s raiser 1
scoreboard players add @s recoveryRaiser 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
