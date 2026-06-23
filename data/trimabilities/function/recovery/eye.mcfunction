

execute at @s as @e[type=item,nbt={Item:{tag:{Trim:{pattern:"minecraft:eye"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{tag:{Trim:{pattern:""}}}}


scoreboard players remove @s eye 1
scoreboard players add @s recoveryEye 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
