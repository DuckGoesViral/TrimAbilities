

execute at @s as @e[type=item,nbt={Item:{tag:{Trim:{pattern:"trimabilities:vital"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{tag:{Trim:{pattern:""}}}}


scoreboard players remove @s vital 1
scoreboard players add @s recoveryVital 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
