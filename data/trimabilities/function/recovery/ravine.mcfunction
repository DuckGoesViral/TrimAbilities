

execute at @s as @e[type=item,nbt={Item:{components:{"minecraft:trim":{pattern:"trimabilities:ravine"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{components:{"minecraft:trim":{pattern:""}}}}


scoreboard players remove @s ravine 1
scoreboard players add @s recoveryRavine 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
