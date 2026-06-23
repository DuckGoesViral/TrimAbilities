

execute at @s as @e[type=item,nbt={Item:{tag:{Trim:{pattern:"trimabilities:echo"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{tag:{Trim:{pattern:""}}}}


scoreboard players remove @s echo 1
scoreboard players add @s recoveryEcho 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
