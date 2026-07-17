
execute unless score @s spire = @s spireOld run attribute @s max_health modifier remove 2-4-0-1-1
execute unless score @s spire = @s spireOld run attribute @s max_health modifier remove 2-4-0-2-1
execute unless score @s spire = @s spireOld run attribute @s max_health modifier remove 2-4-0-3-1
execute unless score @s spire = @s spireOld run attribute @s max_health modifier remove 2-4-1-4-1
execute unless score @s spire = @s spireOld run effect clear @s resistance
execute unless score @s spire = @s spireOld run scoreboard players reset @s domeCooldown
execute unless score @s spire = @s spireOld run scoreboard players reset @s spireMeter

execute if score @s spire matches 0 run tag @s remove spire

execute if score @s spire matches 1 run attribute @s max_health modifier add 2-4-0-1-1 4 add_value
execute if score @s spire matches 2 run attribute @s max_health modifier add 2-4-0-2-1 8 add_value
execute if score @s spire matches 3 run attribute @s max_health modifier add 2-4-0-3-1 12 add_value

execute if score @s spire matches 4 if entity @s[tag=!unlockedSpire] at @s run function trimabilities:unlocked/spire

execute if score @s spire matches 4 run attribute @s max_health modifier add 2-4-1-4-1 10 add_value
execute if score @s spire matches 4 run effect give @s resistance infinite 1 true

scoreboard players operation @s spireOld = @s spire




execute if score @s spire matches 4 if score @s domeCooldown matches 1199 run tellraw @s ["",{"text":"\""},{"text":"DOME","bold":true,"color":"dark_purple"},{"text":"\" is now "},{"text":"available","color":"green"},{"text":"!"}]
execute if score @s spire matches 4 unless score @s domeCooldown matches 1200.. run scoreboard players add @s domeCooldown 1

execute if score @s spire matches 4 if score @s sneakTrigger matches 2.. if score @s domeCooldown matches 1200.. unless entity @s[tag=domed] at @s run function trimabilities:spiredome1
execute if score @s spire matches 4 if score @s sneakTrigger matches 2.. unless score @s domeCooldown matches 1200.. unless entity @s[tag=domed] run tellraw @s ["",{"text":"This ability is ","color":"red"},{"text":"not available","bold":true,"color":"red"}]


execute if score @s spire matches 4 if score @s spireTank matches 1.. unless score @s spireMeter matches 1050.. run scoreboard players operation @s spireTank /= 2 constants
execute if score @s spire matches 4 if score @s spireTank matches 1.. unless score @s spireMeter matches 1050.. run scoreboard players operation @s spireMeter += @s spireTank
execute if score @s spire matches 4 if score @s spireTank matches 1.. run scoreboard players reset @s spireTank

execute if score @s spire matches 4 if score @s spireDeal matches 1.. unless score @s spireMeter matches ..0 run scoreboard players operation @s spireDeal /= 8 constants
execute if score @s spire matches 4 if score @s spireDeal matches 1.. unless score @s spireMeter matches ..0 run scoreboard players operation @s spireMeter -= @s spireDeal
execute if score @s spire matches 4 if score @s spireDeal matches 1.. run scoreboard players reset @s spireDeal

execute if score @s spire matches 4 if score @s spireMeter matches ..25 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"","color":"green"},{"text":"||||||||||||||||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 26..99 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"|","color":"green"},{"text":"|||||||||||||||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 100..199 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||","color":"green"},{"text":"||||||||||||||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 200..299 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||||","color":"green"},{"text":"||||||||||||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 300..399 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||||||","color":"green"},{"text":"||||||||||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 400..499 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||||||||","color":"green"},{"text":"||||||||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 500..599 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||||||||||","color":"green"},{"text":"||||||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 600..699 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||||||||||||","color":"green"},{"text":"||||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 700..799 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||||||||||||||","color":"green"},{"text":"||||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 800..899 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||||||||||||||||","color":"green"},{"text":"||||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 900..950 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"||||||||||||||||||","color":"green"},{"text":"||","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 950..999 run title @s actionbar ["",{"text":"Charging... <","color":"black"},{"text":"|||||||||||||||||||","color":"green"},{"text":"|","color":"dark_gray"},{"text":">","color":"black"}]
execute if score @s spire matches 4 if score @s spireMeter matches 1000.. run title @s actionbar ["",{"text":"Hold Shift! <","color":"black"},{"text":"||||||||||||||||||||","color":"green"},{"text":"","color":"dark_gray"},{"text":">","color":"black"}]

execute if score @s spire matches 4 if score @s spireMeter matches 1000.. if predicate trimabilities:is_sneaking run scoreboard players add @s spireTrigger 1
execute if score @s spire matches 4 if score @s spireMeter matches 1.. unless predicate trimabilities:is_sneaking run scoreboard players set @s spireTrigger 0
execute if score @s spire matches 4 if score @s spireMeter matches 1000.. if score @s spireTrigger matches 4.. run title @s actionbar ["",{"text":"PASSIVE AGGRESSION TRIGGERED","color":"green"},{"text":" (STR II, 20 SEC)","color":"dark_gray"}]
execute if score @s spire matches 4 if score @s spireMeter matches 1000.. if score @s spireTrigger matches 4.. run effect give @s strength 20 1 true
execute if score @s spire matches 4 if score @s spireMeter matches 1000.. if score @s spireTrigger matches 4.. at @s run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 .1 100 normal @a[distance=..20]
execute if score @s spire matches 4 if score @s spireMeter matches 1000.. if score @s spireTrigger matches 4.. run scoreboard players remove @s spireMeter 1000
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4 run tellraw @s ["",{"text":"Spire Ability","color":"green"},{"text":" \"Last Stand\"","bold":true,"color":"dark_purple"},{"text":" Charging Up","color":"green"},{"text":" (Don't Get Hit!)","color":"red"}]
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4..5 at @s run particle minecraft:nautilus ~ ~1 ~ 0 0 0 10 250 normal @a[distance=..50]
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4 run attribute @s movement_speed base set 0
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4 run attribute @s jump_strength base set 0
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4 run attribute @s knockback_resistance base set 10
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking unless score @s sneakSpire matches 11.. if score @s spireDamage matches 1.. run scoreboard players set @s sneakSpire 0
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking unless score @s sneakSpire matches 11.. if score @s spireDamage matches 1.. run scoreboard players reset @s spireDamage
#
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4..10 at @s run playsound minecraft:block.respawn_anchor.charge player @a[distance=..30] ~ ~ ~ 1 0 0
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 11 at @s run playsound minecraft:block.anvil.use player @a[distance=..30] ~ ~ ~ 10 0 1
#
#execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run scoreboard players set @s sneakSpire 0
#execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run attribute @s movement_speed base reset
#execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run attribute @s jump_strength base reset
#execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run attribute @s knockback_resistance base reset
#execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run effect clear @s resistance
#execute if score @s spire matches 4 if predicate trimabilities:is_sneaking unless score @s sneakSpire matches 12.. run scoreboard players add @s sneakSpire 1
#
#execute if score @s spire matches 4 if score @s sneakSpire matches 11 run tellraw @s ["",{"text":"\"Last Stand\"","bold":true,"color":"dark_purple"},{"text":" Activated","bold":true,"color":"green"},{"text":"\n"},{"text":"Your armor durability is being drained 4/second","color":"red"}]
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run effect give @s resistance infinite 9 true
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 .1 10 normal @a[distance=..50]
#
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. store result score @s spireDurability run data get entity @s equipment.head.components."minecraft:damage"
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run scoreboard players add @s spireDurability 1
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run summon armor_stand ~ ~ ~
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.head from entity @s armor.head
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s store result entity @e[type=armor_stand,limit=1,sort=nearest] equipment.head.components."minecraft:damage" int 1 run scoreboard players get @s spireDurability
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @s armor.head from entity @e[type=armor_stand,limit=1,sort=nearest] armor.head
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run kill @e[type=armor_stand,limit=1,sort=nearest]
#
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. store result score @s spireDurability run data get entity @s equipment.chest.components."minecraft:damage"
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run scoreboard players add @s spireDurability 1
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run summon armor_stand ~ ~ ~
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.chest from entity @s armor.chest
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s store result entity @e[type=armor_stand,limit=1,sort=nearest] equipment.chest.components."minecraft:damage" int 1 run scoreboard players get @s spireDurability
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @s armor.chest from entity @e[type=armor_stand,limit=1,sort=nearest] armor.chest
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run kill @e[type=armor_stand,limit=1,sort=nearest]
#
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. store result score @s spireDurability run data get entity @s equipment.legs.components."minecraft:damage"
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run scoreboard players add @s spireDurability 1
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run summon armor_stand ~ ~ ~
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.legs from entity @s armor.legs
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s store result entity @e[type=armor_stand,limit=1,sort=nearest] equipment.legs.components."minecraft:damage" int 1 run scoreboard players get @s spireDurability
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @s armor.legs from entity @e[type=armor_stand,limit=1,sort=nearest] armor.legs
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run kill @e[type=armor_stand,limit=1,sort=nearest]
#
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. store result score @s spireDurability run data get entity @s equipment.feet.components."minecraft:damage"
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run scoreboard players add @s spireDurability 1
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run summon armor_stand ~ ~ ~
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.feet from entity @s armor.feet
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s store result entity @e[type=armor_stand,limit=1,sort=nearest] equipment.feet.components."minecraft:damage" int 1 run scoreboard players get @s spireDurability
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @s armor.feet from entity @e[type=armor_stand,limit=1,sort=nearest] armor.feet
#execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run kill @e[type=armor_stand,limit=1,sort=nearest]
