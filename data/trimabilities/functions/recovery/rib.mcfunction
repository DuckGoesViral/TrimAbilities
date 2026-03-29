

execute at @s as @e[type=item,nbt={Item:{components: {"minecraft:trim":{pattern:"minecraft:rib"}}}},distance=..10,limit=1,sort=nearest] run item modify entity @s container.0 trimabilities:remove_trim


scoreboard players remove @s rib 1
scoreboard players add @s recoveryRib 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
