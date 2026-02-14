execute unless score @s mana matches 75.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 75.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Ice Cube!","color":"red","bold": true}]

scoreboard players remove @s mana 75

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2


scoreboard objectives add iceTimer dummy
execute at @s if entity @s[team=AquaTeam] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!AquaTeam,distance=..10] run tag @s add frozen
execute at @s if entity @s[team=BlueTeam] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!AquaTeam,distance=..10] run tag @s add frozen
execute at @s if entity @s[team=GoldTeam] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!AquaTeam,distance=..10] run tag @s add frozen
execute at @s if entity @s[team=GrayTeam] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!AquaTeam,distance=..10] run tag @s add frozen
execute at @s if entity @s[team=GreenTeam] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!AquaTeam,distance=..10] run tag @s add frozen
execute at @s if entity @s[team=PurpleTeam] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!AquaTeam,distance=..10] run tag @s add frozen
execute at @s if entity @s[team=RedTeam] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!AquaTeam,distance=..10] run tag @s add frozen
execute at @s if entity @s[team=YellowTeam] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!AquaTeam,distance=..10] run tag @s add frozen
execute at @s if entity @s[team=] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,distance=..10] run tag @s add frozen
tag @s remove frozen
execute as @e[tag=frozen] at @s unless entity @e[type=marker,distance=..1,tag=iceMarker] run summon marker ~ ~ ~ {Tags:["iceMarker"]}
execute at @s as @e[type=marker,tag=iceMarker,distance=..10] run scoreboard players set @s iceTimer 0
execute at @s as @e[type=marker,tag=iceMarker,distance=..10] at @s run fill ~ ~ ~ ~ ~1 ~ ice replace air


execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 75 normal @a[distance=..15]
execute at @s run particle minecraft:snowflake ~ ~ ~ 1 0 1 1 100 normal @a[distance=..25]


scoreboard players add @s mageLevel 8
execute as @s[tag=mLvl0] run title @s actionbar ["",{"text":"+8","color":"dark_aqua"},{"text":" Mage xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @s[tag=mLvl1] run title @s actionbar ["",{"text":"+8","color":"dark_aqua"},{"text":" Mage xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @s[tag=mLvl2] run title @s actionbar ["",{"text":"+8","color":"dark_aqua"},{"text":" Mage xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl3] run title @s actionbar ["",{"text":"+8","color":"dark_aqua"},{"text":" Mage xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @s[tag=mLvl4] run title @s actionbar ["",{"text":"+8","color":"dark_aqua"},{"text":" Mage xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl5] run title @s actionbar ["",{"text":"+8","color":"dark_aqua"},{"text":" Mage xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
scoreboard players add @s xpDelay 1
