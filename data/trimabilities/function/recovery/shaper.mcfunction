

execute at @s as @e[type=item,nbt={Item:{components:{"minecraft:trim":{pattern:"minecraft:shaper"}}}},distance=..10,limit=1,sort=nearest] run data merge entity @s {Item:{components:{"minecraft:trim":{pattern:""}}}}

execute at @s run summon item ~ ~ ~ {Item:{id:"debug_stick",components:{item_model:"trimabilities:trim_essence",max_stack_size:16,item_name:{text:"Trim Essence",color:dark_purple}},count:2}}
scoreboard players remove @s insuranceBudget 2

scoreboard players remove @s shaper 1
scoreboard players add @s recoveryShaper 1
scoreboard players add @s recoveryTotal 1


function trimabilities:recovery/trimrecovery
