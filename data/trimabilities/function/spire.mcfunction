
execute unless score @s spire = @s spireOld run attribute @s max_health modifier remove 2-4-0-1-1
execute unless score @s spire = @s spireOld run attribute @s max_health modifier remove 2-4-0-2-1
execute unless score @s spire = @s spireOld run attribute @s max_health modifier remove 2-4-0-3-1
execute unless score @s spire = @s spireOld run attribute @s max_health modifier remove 2-4-1-4-1
execute unless score @s spire = @s spireOld run effect clear @s resistance

execute if score @s spire matches 0 run tag @s remove spire

execute if score @s spire matches 1 run attribute @s max_health modifier add 2-4-0-1-1 4 add_value
execute if score @s spire matches 2 run attribute @s max_health modifier add 2-4-0-2-1 8 add_value
execute if score @s spire matches 3 run attribute @s max_health modifier add 2-4-0-3-1 12 add_value

execute if score @s spire matches 4 if entity @s[tag=!unlockedSpire] at @s run function trimabilities:unlocked/spire

execute if score @s spire matches 4 run attribute @s max_health modifier add 2-4-1-4-1 10 add_value
execute if score @s spire matches 4 run effect give @s resistance infinite 1 true





execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4 run tellraw @s ["",{"text":"Spire Ability","color":"green"},{"text":" \"Last Stand\"","bold":true,"color":"dark_purple"},{"text":" Charging Up","color":"green"},{"text":" (Don't Get Hit!)","color":"red"}]
execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4..5 at @s run particle minecraft:nautilus ~ ~1 ~ 0 0 0 10 250 normal @a[distance=..50]
execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4 run attribute @s movement_speed base set 0
execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4 run attribute @s jump_strength base set 0
execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4 run attribute @s knockback_resistance base set 10
execute if score @s spire matches 4 if predicate trimabilities:is_sneaking unless score @s sneakSpire matches 11.. if score @s spireDamage matches 1.. run scoreboard players set @s sneakSpire 0
execute if score @s spire matches 4 if predicate trimabilities:is_sneaking unless score @s sneakSpire matches 11.. if score @s spireDamage matches 1.. run scoreboard players reset @s spireDamage

execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 4..10 at @s run playsound minecraft:block.respawn_anchor.charge player @a[distance=..30] ~ ~ ~ 1 0 0
execute if score @s spire matches 4 if predicate trimabilities:is_sneaking if score @s sneakSpire matches 11 at @s run playsound minecraft:block.anvil.use player @a[distance=..30] ~ ~ ~ 10 0 1

execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run scoreboard players set @s sneakSpire 0
execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run attribute @s movement_speed base reset
execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run attribute @s jump_strength base reset
execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run attribute @s knockback_resistance base reset
execute if score @s spire matches 4 unless predicate trimabilities:is_sneaking run effect clear @s resistance
execute if score @s spire matches 4 if predicate trimabilities:is_sneaking unless score @s sneakSpire matches 12.. run scoreboard players add @s sneakSpire 1

execute if score @s spire matches 4 if score @s sneakSpire matches 11 run tellraw @s ["",{"text":"\"Last Stand\"","bold":true,"color":"dark_purple"},{"text":" Activated","bold":true,"color":"green"},{"text":"\n"},{"text":"Your armor durability is being drained 4/second","color":"red"}]
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run effect give @s resistance infinite 9 true
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 .1 10 normal @a[distance=..50]

execute if score @s spire matches 4 if score @s sneakSpire matches 11.. store result score @s spireDurability run data get entity @s equipment.head.components."minecraft:damage"
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run scoreboard players add @s spireDurability 1
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run summon armor_stand ~ ~ ~
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.head from entity @s armor.head
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s store result entity @e[type=armor_stand,limit=1,sort=nearest] equipment.head.components."minecraft:damage" int 1 run scoreboard players get @s spireDurability
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @s armor.head from entity @e[type=armor_stand,limit=1,sort=nearest] armor.head
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run kill @e[type=armor_stand,limit=1,sort=nearest]

execute if score @s spire matches 4 if score @s sneakSpire matches 11.. store result score @s spireDurability run data get entity @s equipment.chest.components."minecraft:damage"
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run scoreboard players add @s spireDurability 1
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run summon armor_stand ~ ~ ~
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.chest from entity @s armor.chest
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s store result entity @e[type=armor_stand,limit=1,sort=nearest] equipment.chest.components."minecraft:damage" int 1 run scoreboard players get @s spireDurability
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @s armor.chest from entity @e[type=armor_stand,limit=1,sort=nearest] armor.chest
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run kill @e[type=armor_stand,limit=1,sort=nearest]

execute if score @s spire matches 4 if score @s sneakSpire matches 11.. store result score @s spireDurability run data get entity @s equipment.legs.components."minecraft:damage"
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run scoreboard players add @s spireDurability 1
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run summon armor_stand ~ ~ ~
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.legs from entity @s armor.legs
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s store result entity @e[type=armor_stand,limit=1,sort=nearest] equipment.legs.components."minecraft:damage" int 1 run scoreboard players get @s spireDurability
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @s armor.legs from entity @e[type=armor_stand,limit=1,sort=nearest] armor.legs
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run kill @e[type=armor_stand,limit=1,sort=nearest]

execute if score @s spire matches 4 if score @s sneakSpire matches 11.. store result score @s spireDurability run data get entity @s equipment.feet.components."minecraft:damage"
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. run scoreboard players add @s spireDurability 1
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run summon armor_stand ~ ~ ~
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.feet from entity @s armor.feet
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s store result entity @e[type=armor_stand,limit=1,sort=nearest] equipment.feet.components."minecraft:damage" int 1 run scoreboard players get @s spireDurability
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run item replace entity @s armor.feet from entity @e[type=armor_stand,limit=1,sort=nearest] armor.feet
execute if score @s spire matches 4 if score @s sneakSpire matches 11.. at @s run kill @e[type=armor_stand,limit=1,sort=nearest]
