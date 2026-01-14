


execute if score @s subPower matches 4.. run item modify entity @s weapon.mainhand trimabilities:1power
execute if score @s subPower matches 4.. run return run function trimabilities:subarrow_loop

execute store result score @s subRandom run random value 1..4

execute if score @s subRandom <= @s subPower run item modify entity @s weapon.mainhand trimabilities:1power
execute if score @s subRandom <= @s subPower run scoreboard players add @s subTag 1

execute if score @s subTag matches 1 run item modify entity @s weapon.mainhand trimabilities:power_tag1
execute if score @s subTag matches 2 run item modify entity @s weapon.mainhand trimabilities:power_tag2
execute if score @s subTag matches 3 run item modify entity @s weapon.mainhand trimabilities:power_tag3
execute if score @s subTag matches 4 run item modify entity @s weapon.mainhand trimabilities:power_tag4

