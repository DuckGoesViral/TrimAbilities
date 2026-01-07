

execute at @s as @e[type=item,nbt={Item:{tag:{Trim:{pattern:"minecraft:dune"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{tag:{Trim:{pattern:""}}}}


scoreboard players remove @s dune 1
scoreboard players add @s recoveryDune 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
