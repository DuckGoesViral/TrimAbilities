

execute unless score @s mana matches 30.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 30.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Heal Pool!","color":"red","bold": true}]

scoreboard players remove @s mana 30

execute at @s run summon item_display ~ ~.5 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"totem_of_undying",Count:1b},Tags:["healPool"]}


execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 30 normal @a[distance=..15]


