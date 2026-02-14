

execute unless score @s mana matches 30.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 30.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Heal Pool!","color":"red","bold": true}]

scoreboard players remove @s mana 30

execute at @s run summon item_display ~ ~.5 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"totem_of_undying",Count:1b},Tags:["healPool"]}
execute if entity @s[team=AquaTeam] at @s as @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=healPool] run team join AquaTeam
execute if entity @s[team=BlueTeam] at @s as @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=healPool] run team join BlueTeam
execute if entity @s[team=GoldTeam] at @s as @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=healPool] run team join GoldTeam
execute if entity @s[team=GrayTeam] at @s as @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=healPool] run team join GrayTeam
execute if entity @s[team=GreenTeam] at @s as @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=healPool] run team join GreenTeam
execute if entity @s[team=PurpleTeam] at @s as @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=healPool] run team join PurpleTeam
execute if entity @s[team=RedTeam] at @s as @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=healPool] run team join RedTeam
execute if entity @s[team=YellowTeam] at @s as @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=healPool] run team join YellowTeam

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 30 normal @a[distance=..15]


effect give @s saturation 1 1 true

scoreboard players add @s mageLevel 3
execute as @s[tag=mLvl0] run title @s actionbar ["",{"text":"+3","color":"dark_aqua"},{"text":" Mage xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @s[tag=mLvl1] run title @s actionbar ["",{"text":"+3","color":"dark_aqua"},{"text":" Mage xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @s[tag=mLvl2] run title @s actionbar ["",{"text":"+3","color":"dark_aqua"},{"text":" Mage xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl3] run title @s actionbar ["",{"text":"+3","color":"dark_aqua"},{"text":" Mage xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @s[tag=mLvl4] run title @s actionbar ["",{"text":"+3","color":"dark_aqua"},{"text":" Mage xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl5] run title @s actionbar ["",{"text":"+3","color":"dark_aqua"},{"text":" Mage xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
scoreboard players add @s xpDelay 1
