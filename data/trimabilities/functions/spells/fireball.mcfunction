execute unless score @s mana matches 20.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 20.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Fireball!","color":"red","bold": true}]

scoreboard players remove @s mana 20

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2

execute at @s run summon fireball ~ ~1.25 ~

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 20 normal @a[distance=..15]



execute as @s[tag=mLvl0] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @s[tag=mLvl1] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @s[tag=mLvl2] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl3] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @s[tag=mLvl4] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl5] run title @s actionbar ["",{"text":"+2","color":"dark_aqua"},{"text":" Mage xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
scoreboard players add @s xpDelay 1
scoreboard players add @s mageLevel 2
