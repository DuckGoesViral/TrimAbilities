
execute at @s as @e[type=item,nbt={Item:{components:{"minecraft:trim":{pattern:"minecraft:bolt"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{components:{"minecraft:trim":{pattern:""}}}}


scoreboard players remove @s bolt 1
scoreboard players add @s recoveryBolt 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
