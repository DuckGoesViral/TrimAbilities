#Warrior

#Silence
#4.5 attack speed, 0.125 speed (default speed = 0.10000000149011612)
execute if entity @a[scores={progressSilence=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run function trimabilities:silence


#Tank


#Spire
#armor buffs
execute if entity @a[scores={progressSpire=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run function trimabilities:spire


#Archer
scoreboard players reset @a subPower


#Wayfinder
#haste but blindness
execute as @a[scores={wayfinder=1..}] run scoreboard players set @s wayfinder 0

execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run scoreboard players add @s wayfinder 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run scoreboard players add @s wayfinder 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run scoreboard players add @s wayfinder 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run scoreboard players add @s wayfinder 1

execute as @a[scores={wayfinder=1..}] run tag @s add wayfinder

execute as @a[tag=wayfinder] run function trimabilities:wayfinder




#Wild
#jump boost 4, 0.125 speed
execute as @a[scores={wild=1..}] run scoreboard players set @s wild 0

execute as @a if entity @s[scores={progressWild=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run scoreboard players add @s wild 1
execute as @a if entity @s[scores={progressWild=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run scoreboard players add @s wild 1
execute as @a if entity @s[scores={progressWild=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run scoreboard players add @s wild 1
execute as @a if entity @s[scores={progressWild=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run scoreboard players add @s wild 1

execute as @a[scores={wild=1..}] run tag @s add wild

execute as @a[tag=wild] run function trimabilities:wild




#Eye
#luck 2, invisibility
execute if entity @a[scores={progressEye=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:eye"}}}]}] run function trimabilities:eye


#Sentry
#arrows shot move faster and deal more damage
execute if entity @a[scores={progressSentry=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:sentry"}}}]}] run function trimabilities:sentry





scoreboard players add timer mana 1
execute if score timer mana matches 100.. as @a[tag=mage] unless score @s mana >= @s manaMax run function trimabilities:manaregen
execute if score timer mana matches 100.. as @a[tag=mage] if score @s mana > @s manaMax run scoreboard players operation @s mana = @s manaMax
execute if score timer mana matches 100.. run scoreboard players set timer mana 0

execute as @a[tag=raiser] run title @s actionbar ["",{"text":"Mana: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"mana"},"color":"dark_aqua"},{"text":" |","color":"dark_gray"},{"text":" Souls: ","color":"dark_green"},{"score":{"name":"@s","objective":"frankensteinScore"},"color":"dark_green"}]

execute as @a[tag=mage,tag=!raiser] run title @s actionbar ["",{"text":"Mana: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"mana"},"color":"dark_aqua"}]


execute as @a[tag=mage,scores={2457-1364=1..}] at @s run function trimabilities:spells/fireball
execute as @a[tag=mage,scores={6781-6345=1..}] at @s run function trimabilities:spells/damageorb
execute as @a[tag=mage,scores={0123-9678=1..}] at @s run function trimabilities:spells/healpool
execute as @a[tag=mage,scores={8259-8215=1..}] at @s run function trimabilities:spells/frankenstein/zombie
execute as @a[tag=mage,scores={8259-9671=1..}] at @s run function trimabilities:spells/frankenstein/skeleton
execute as @a[tag=mage,scores={8259-2315=1..}] at @s run function trimabilities:spells/frankenstein/witherskeleton

execute as @a[scores={2457-1364=1..}] run scoreboard players reset 2457-1364
execute as @a[scores={6781-6345=1..}] run scoreboard players reset 6781-6345
execute as @a[scores={0123-9678=1..}] run scoreboard players reset 0123-9678
execute as @a[scores={8259-8215=1..}] run scoreboard players reset 8259-8215
execute as @a[scores={8259-9671=1..}] run scoreboard players reset 8259-9671
execute as @a[scores={8259-2315=1..}] run scoreboard players reset 8259-2315

scoreboard objectives add orbDeath dummy
execute as @e[type=item_display,tag=damageOrb] run scoreboard players add @s orbDeath 1
execute as @e[type=armor_stand,tag=damageOrbMarker] run scoreboard players add @s orbDeath 1
execute as @a[tag=damageOrbImmunity] run scoreboard players add @s orbDeath 1

execute at @e[type=item_display,tag=damageOrb,scores={orbDeath=600..}] run particle minecraft:poof ~ ~-.25 ~ .1 .1 .1 .1 15 normal @a
execute as @e[type=item_display,tag=damageOrb,scores={orbDeath=600..}] run kill @s
execute as @e[type=armor_stand,tag=damageOrbMarker,scores={orbDeath=600..}] run kill @s
execute as @a[tag=damageOrbImmunity,scores={orbDeath=600..}] run tag @s remove damageOrbImmunity
execute as @a[scores={orbDeath=600..}] run scoreboard players reset @s orbDeath

execute as @e[type=item_display,tag=healPool] run scoreboard players add @s orbDeath 1
execute at @e[type=item_display,tag=healPool,scores={orbDeath=400..}] run particle minecraft:heart ~ ~-.25 ~ .1 .1 .1 .1 5 normal @a
execute as @e[type=item_display,tag=healPool,scores={orbDeath=400..}] run kill @s


execute as @e[type=armor_stand,tag=damageOrbMarker] at @s run tp ^ ^ ^-.025
execute as @e[type=item_display,tag=damageOrb] at @s at @e[type=armor_stand,tag=damageOrbMarker,limit=1,sort=nearest] run tp ~ ~2 ~
execute at @e[type=item_display,tag=damageOrb] run particle minecraft:smoke ~ ~-.25 ~ .1 .1 .1 0 5 normal @a


execute as @e[type=minecraft:item_display,tag=healPool] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=minecraft:item_display,tag=healPool] at @s run particle minecraft:egg_crack ^ ^ ^2.5
