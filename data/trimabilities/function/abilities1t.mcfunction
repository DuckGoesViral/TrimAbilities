
#Warrior

#Silence
#4.5 attack speed, 0.125 speed (default speed = 0.10000000149011612)
#execute if entity @a[scores={progressSilence=3..},nbt={Inventory:[{Slot:,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run function trimabilities:silence

#Tank


#Spire
#armor buffs
#execute if entity @a[scores={progressSpire=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run function trimabilities:spire


#Archer




#vex
#air walk
execute as @a[scores={vex=1..}] run scoreboard players set @s vex 0

execute as @a if entity @s[scores={mcLvl=5..},nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:vex"}}}}}] run scoreboard players add @s vex 1
execute as @a if entity @s[scores={mcLvl=5..},nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:vex"}}}}}] run scoreboard players add @s vex 1
execute as @a if entity @s[scores={mcLvl=5..},nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:vex"}}}}}] run scoreboard players add @s vex 1
execute as @a if entity @s[scores={mcLvl=5..},nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:vex"}}}}}] run scoreboard players add @s vex 1

execute as @a[scores={vex=1..}] run tag @s add vex

execute as @a[tag=vex] run function trimabilities:vex








execute as @a[scores={sentry=4..}] if score @s sentryCharge matches 5.. if score @s sentryShot matches 1.. at @s run scoreboard players operation @e[type=arrow,limit=1,sort=nearest] sentryCharge = @s sentryCharge
execute as @a[scores={sentry=4..}] if score @s sentryCharge matches 5.. if score @s sentryShot matches 1.. at @s run scoreboard players reset @s sentryShot
execute as @a[scores={sentry=4..}] unless score @s bow_draw matches 1 run scoreboard players reset @s sentryCharge









scoreboard players add timer mana 1
execute if score timer mana matches 100.. as @a[tag=mage] unless score @s mana >= @s manaMax run function trimabilities:manaregen
execute if score timer mana matches 100.. as @a[tag=mage] if score @s mana > @s manaMax run scoreboard players operation @s mana = @s manaMax
execute if score timer mana matches 100.. run scoreboard players set timer mana 0

execute as @a[tag=mage,scores={xpDelay=1..}] run scoreboard players add @s xpDelay 1
execute as @a[tag=mage,scores={xpDelay=60..}] run scoreboard players reset @s xpDelay

execute as @a[tag=raiser] unless score @s xpDelay matches 1.. run title @s actionbar ["",{"text":"Mana: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"mana"},"color":"dark_aqua"},{"text":" |","color":"dark_gray"},{"text":" Souls: ","color":"dark_green"},{"score":{"name":"@s","objective":"frankensteinScore"},"color":"dark_green"}]

execute as @a[tag=mage,tag=!raiser] unless score @s xpDelay matches 1.. run title @s actionbar ["",{"text":"| ","color":"dark_gray"},{"text":"Mana: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"mana"},"color":"dark_aqua"},{"text":" |","color":"dark_gray"}]

scoreboard players enable @a[tag=mage] 7456-2314
scoreboard players enable @a[tag=mage] 9124-4841
scoreboard players enable @a[tag=mage] 9725-4688
scoreboard players enable @a[tag=mage] 8942-6759
scoreboard players enable @a[tag=mage] 6639-3275

scoreboard players enable @a[tag=mage] 2457-1364
scoreboard players enable @a[tag=mage] 6781-6345
scoreboard players enable @a[tag=mage] 0123-9678
scoreboard players enable @a[tag=mage] 8259-8215
scoreboard players enable @a[tag=mage] 8259-9671
scoreboard players enable @a[tag=mage] 8259-2315
scoreboard players enable @a[tag=mage] 5681-8055
scoreboard players enable @a[tag=mage] 4956-7855

execute as @a[scores={2457-1364=1..},tag=mage] at @s run function trimabilities:spells/fireball
execute as @a[scores={6781-6345=1..},tag=mage] at @s run function trimabilities:spells/damageorb
execute as @a[scores={0123-9678=1..},tag=mage] at @s run function trimabilities:spells/healpool
execute as @a[scores={8259-8215=1..,raiser=4},tag=mage] at @s run function trimabilities:spells/frankenstein/zombie
execute as @a[scores={8259-9671=1..,raiser=4},tag=mage] at @s run function trimabilities:spells/frankenstein/skeleton
execute as @a[scores={8259-2315=1..,raiser=4},tag=mage] at @s run function trimabilities:spells/frankenstein/witherskeleton
execute as @a[scores={5681-8055=1..,stray=4},tag=mage] at @s run function trimabilities:spells/cryomancy
execute as @a[scores={4956-7855=1..,stray=4},tag=mage] at @s run function trimabilities:spells/icecube


execute as @a[scores={2457-1364=1..}] run scoreboard players set @s 2457-1364 0
execute as @a[scores={6781-6345=1..}] run scoreboard players set @s 6781-6345 0
execute as @a[scores={0123-9678=1..}] run scoreboard players set @s 0123-9678 0
execute as @a[scores={8259-8215=1..}] run scoreboard players set @s 8259-8215 0
execute as @a[scores={8259-9671=1..}] run scoreboard players set @s 8259-9671 0
execute as @a[scores={8259-2315=1..}] run scoreboard players set @s 8259-2315 0
execute as @a[scores={5681-8055=1..}] run scoreboard players set @s 5681-8055 0
execute as @a[scores={4956-7855=1..}] run scoreboard players set @s 4956-7855 0



execute as @e[type=snow_golem,tag=cryoGolem] run scoreboard players add @s orbDeath 1
execute as @e[type=snow_golem,tag=cryoGolem,scores={orbDeath=2400..}] run kill @s

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


execute as @e[tag=frozen] at @s if entity @e[type=marker,tag=iceMarker,distance=..1] run tp @s @e[type=marker,tag=iceMarker,distance=..1,limit=1,sort=nearest]
execute as @e[tag=frozen] at @s unless entity @e[type=marker,tag=iceMarker,distance=..1] run tag @s remove frozen
execute as @e[type=marker,tag=iceMarker] run scoreboard players add @s iceTimer 1
execute as @e[type=marker,tag=iceMarker,scores={iceTimer=100..}] at @s if block ~ ~ ~ ice run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=iceMarker,scores={iceTimer=100..}] at @s if block ~ ~1 ~ ice run setblock ~ ~1 ~ air destroy
execute as @e[type=marker,tag=iceMarker,scores={iceTimer=100..}] run kill @s


