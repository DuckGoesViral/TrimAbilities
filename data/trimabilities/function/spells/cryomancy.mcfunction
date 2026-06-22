execute unless score @s mana matches 50.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 50.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Cryomancy!","color":"red","bold": true}]

scoreboard players remove @s mana 50

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2




execute at @s run summon snow_golem ~ ~ ~ {Pumpkin:0b,Tags:["cryoGolem"],DeathLootTable:"minecraft:empty"}
execute at @s run summon snow_golem ~ ~ ~ {Pumpkin:0b,Tags:["cryoGolem"],DeathLootTable:"minecraft:empty"}
execute at @s run effect give @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] speed infinite 1 true
execute at @s if entity @s[team=AquaTeam] as @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] run team join AquaTeam
execute at @s if entity @s[team=BlueTeam] as @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] run team join BlueTeam
execute at @s if entity @s[team=GoldTeam] as @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] run team join GoldTeam
execute at @s if entity @s[team=GrayTeam] as @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] run team join GrayTeam
execute at @s if entity @s[team=GreenTeam] as @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] run team join GreenTeam
execute at @s if entity @s[team=PurpleTeam] as @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] run team join PurpleTeam
execute at @s if entity @s[team=RedTeam] as @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] run team join RedTeam
execute at @s if entity @s[team=YellowTeam] as @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] run team join YellowTeam

execute if entity @s[team=] run tag @s add cryoSummon
execute if entity @s[team=] run tag @e[type=snow_golem,tag=cryoGolem,limit=2,sort=nearest] add cryoSummon


execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 50 normal @a[distance=..15]
execute at @s run particle minecraft:snowflake ~ ~ ~ 1 0 1 1 100 normal @a[distance=..25]


scoreboard players add @s mageLevel 5
execute as @s[tag=mLvl0] run title @s actionbar ["",{"text":"+5","color":"dark_aqua"},{"text":" Mage xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @s[tag=mLvl1] run title @s actionbar ["",{"text":"+5","color":"dark_aqua"},{"text":" Mage xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @s[tag=mLvl2] run title @s actionbar ["",{"text":"+5","color":"dark_aqua"},{"text":" Mage xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl3] run title @s actionbar ["",{"text":"+5","color":"dark_aqua"},{"text":" Mage xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @s[tag=mLvl4] run title @s actionbar ["",{"text":"+5","color":"dark_aqua"},{"text":" Mage xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl5] run title @s actionbar ["",{"text":"+5","color":"dark_aqua"},{"text":" Mage xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
scoreboard players add @s xpDelay 1
