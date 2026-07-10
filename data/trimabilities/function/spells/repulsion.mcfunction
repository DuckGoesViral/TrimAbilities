execute unless score @s mLvl matches 2.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mLvl matches 2.. run return run tellraw @s ["",{"text":"You need Mage Level 2 or higher to cast Repulsion!","color":"red","bold": true}]
execute unless score @s mana matches 20.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 20.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Repulsion!","color":"red","bold": true}]

scoreboard players remove @s mana 20

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2

#execute at @s run summon minecraft:breeze_wind_charge ~.5 ~1.8 ~ {Motion:[-10.0,0.0,0.0]}
#execute at @s run summon minecraft:breeze_wind_charge ~-.5 ~1.8 ~ {Motion:[10.0,0.0,0.0]}
#execute at @s run summon minecraft:breeze_wind_charge ~ ~1.8 ~.5 {Motion:[0.0,0.0,-10.0]}
#execute at @s run summon minecraft:breeze_wind_charge ~ ~1.8 ~-.5 {Motion:[0.0,0.0,10.0]}

tag @s add repulsor
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] run damage @s 2 magic
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s run rotate @s facing entity @a[tag=repulsor,limit=1,sort=nearest]
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.5
execute at @s as @e[distance=..8,type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] unless entity @s[tag=repulsor] at @s if block ^ ^.25 ^ air run tp @s ^ ^.25 ^
tag @s remove repulsor

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 20 normal @a[distance=..30]
execute at @s run particle minecraft:gust_emitter_large ~ ~1 ~ 0 0 0 0 1 normal @a[distance=..30]

scoreboard players add @s mageLevel 2
execute as @s[tag=mLvl0] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @s[tag=mLvl1] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @s[tag=mLvl2] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl3] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @s[tag=mLvl4] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl5] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
scoreboard players add @s xpDelay 1
