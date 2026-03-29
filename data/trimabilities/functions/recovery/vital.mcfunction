

execute at @s as @e[type=item,nbt={Item:{components: {"minecraft:trim":{pattern:"trimabilities:vital"}}}},distance=..10,limit=1,sort=nearest] run item modify entity @s container.0 trimabilities:remove_trim


scoreboard players remove @s vital 1
scoreboard players add @s recoveryVital 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
