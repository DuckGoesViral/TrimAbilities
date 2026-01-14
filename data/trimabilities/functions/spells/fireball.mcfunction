execute unless score @s mana matches 20.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 20.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Fireball!","color":"red","bold": true}]

scoreboard players remove @s mana 20

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2

execute at @s run summon fireball ~ ~1 ~

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 20 normal @a[distance=..15]
