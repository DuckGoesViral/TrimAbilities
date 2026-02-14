#Utility

#Coast
#water breathing
execute as @a[scores={coast=1..}] run scoreboard players set @s coast 0

execute as @a if entity @s[scores={mcLvl=2..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run scoreboard players add @s coast 1
execute as @a if entity @s[scores={mcLvl=2..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run scoreboard players add @s coast 1
execute as @a if entity @s[scores={mcLvl=2..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run scoreboard players add @s coast 1
execute as @a if entity @s[scores={mcLvl=2..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run scoreboard players add @s coast 1

execute as @a[scores={coast=1..}] run tag @s add coast

execute as @a[tag=coast] run function trimabilities:coast


#Tide
#water breathing, dolphins grace
execute as @a[scores={tide=1..}] run scoreboard players set @s tide 0

execute as @a if entity @s[scores={mcLvl=4..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run scoreboard players add @s tide 1
execute as @a if entity @s[scores={mcLvl=4..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run scoreboard players add @s tide 1
execute as @a if entity @s[scores={mcLvl=4..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run scoreboard players add @s tide 1
execute as @a if entity @s[scores={mcLvl=4..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run scoreboard players add @s tide 1

execute as @a[scores={tide=1..}] run tag @s add tide

execute as @a[tag=tide] run function trimabilities:tide


#Ravine
execute as @a[scores={ravine=1..}] run scoreboard players set @s ravine 0

execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"trimabilities:ravine"}}}]}] run scoreboard players add @s ravine 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"trimabilities:ravine"}}}]}] run scoreboard players add @s ravine 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"trimabilities:ravine"}}}]}] run scoreboard players add @s ravine 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"trimabilities:ravine"}}}]}] run scoreboard players add @s ravine 1

execute as @a[scores={ravine=1..}] run tag @s add ravine

execute as @a[tag=ravine] run function trimabilities:ravine

#Rib
execute as @a[scores={rib=1..}] run scoreboard players set @s rib 0

execute as @a if entity @s[scores={mcLvl=6..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run scoreboard players add @s rib 1
execute as @a if entity @s[scores={mcLvl=6..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run scoreboard players add @s rib 1
execute as @a if entity @s[scores={mcLvl=6..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run scoreboard players add @s rib 1
execute as @a if entity @s[scores={mcLvl=6..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run scoreboard players add @s rib 1

execute as @a[scores={rib=1..}] run tag @s add rib

execute as @a[tag=rib] run function trimabilities:rib




#Warrior

#Shaper
#haste but slowness
execute as @a[scores={shaper=1..}] run scoreboard players set @s shaper 0

execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run scoreboard players add @s shaper 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run scoreboard players add @s shaper 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run scoreboard players add @s shaper 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run scoreboard players add @s shaper 1

execute as @a[scores={shaper=1..}] run tag @s add shaper

execute as @a[tag=shaper] run function trimabilities:shaper

#Dune
#fast but low damage
execute as @a[scores={dune=1..}] run scoreboard players set @s dune 0

execute as @a if entity @s[scores={progressDune=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run scoreboard players add @s dune 1
execute as @a if entity @s[scores={progressDune=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run scoreboard players add @s dune 1
execute as @a if entity @s[scores={progressDune=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run scoreboard players add @s dune 1
execute as @a if entity @s[scores={progressDune=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run scoreboard players add @s dune 1

execute as @a[scores={dune=1..}] run tag @s add dune

execute as @a[tag=dune] run function trimabilities:dune

#Snout
#fire res, regen 1
execute as @a[scores={snout=1..}] run scoreboard players set @s snout 0

execute as @a if entity @s[scores={progressSnout=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run scoreboard players add @s snout 1
execute as @a if entity @s[scores={progressSnout=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run scoreboard players add @s snout 1
execute as @a if entity @s[scores={progressSnout=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run scoreboard players add @s snout 1
execute as @a if entity @s[scores={progressSnout=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run scoreboard players add @s snout 1

execute as @a[scores={snout=1..}] run tag @s add snout

execute as @a[tag=snout] run function trimabilities:snout


#Tank

#Host
#haste but less hearts

execute as @a[scores={host=1..}] run scoreboard players set @s host 0

execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run scoreboard players add @s host 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run scoreboard players add @s host 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run scoreboard players add @s host 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run scoreboard players add @s host 1

execute as @a[scores={host=1..}] run tag @s add host

execute as @a[tag=host] run function trimabilities:host


#Vital
execute as @a[scores={vital=1..}] run scoreboard players set @s vital 0

execute as @a if entity @s[scores={progressVital=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"trimabilities:vital"}}}]}] run scoreboard players add @s vital 1
execute as @a if entity @s[scores={progressVital=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"trimabilities:vital"}}}]}] run scoreboard players add @s vital 1
execute as @a if entity @s[scores={progressVital=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"trimabilities:vital"}}}]}] run scoreboard players add @s vital 1
execute as @a if entity @s[scores={progressVital=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"trimabilities:vital"}}}]}] run scoreboard players add @s vital 1

execute as @a[scores={vital=1..}] run tag @s add vital

execute as @a[tag=vital] run function trimabilities:vital


#Ward
#health boost 5, speed set at 0.08
execute as @a[scores={ward=1..}] run scoreboard players set @s ward 0

execute as @a if entity @s[scores={progressWard=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run scoreboard players add @s ward 1
execute as @a if entity @s[scores={progressWard=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run scoreboard players add @s ward 1
execute as @a if entity @s[scores={progressWard=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run scoreboard players add @s ward 1
execute as @a if entity @s[scores={progressWard=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run scoreboard players add @s ward 1

execute as @a[scores={ward=1..}] run tag @s add ward

execute as @a[tag=ward] run function trimabilities:ward







#Raiser
#haste but weakness


execute as @a[scores={raiser=1..}] run scoreboard players set @s raiser 0

execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run scoreboard players add @s raiser 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run scoreboard players add @s raiser 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run scoreboard players add @s raiser 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run scoreboard players add @s raiser 1

execute as @a[scores={raiser=1..}] run tag @s add raiser

execute as @a[tag=raiser] run function trimabilities:raiser


#Stray
execute as @a[scores={stray=1..}] run scoreboard players set @s stray 0

execute as @a if entity @s[scores={progressStray=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"trimabilities:stray"}}}]}] run scoreboard players add @s stray 1
execute as @a if entity @s[scores={progressStray=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"trimabilities:stray"}}}]}] run scoreboard players add @s stray 1
execute as @a if entity @s[scores={progressStray=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"trimabilities:stray"}}}]}] run scoreboard players add @s stray 1
execute as @a if entity @s[scores={progressStray=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"trimabilities:stray"}}}]}] run scoreboard players add @s stray 1

execute as @a[scores={stray=1..}] run tag @s add stray

execute as @a[tag=stray] run function trimabilities:stray


#AquaTeam
#AquaTeam
#BlueTeam
#BlueTeam
#GoldTeam
#GoldTeam
#GrayTeam
#GrayTeam
#GreenTeam
#GreenTeam
#PurpleTeam
#PurpleTeam
#RedTeam
#RedTeam
#YellowTeam
#YellowTeam

execute as @e[type=snow_golem,tag=cryoGolem] at @s run particle minecraft:snowflake ~ ~ ~ 5 5 5 0 100 normal @a[distance=..30]
execute as @a[tag=cryoSummon] at @s unless entity @e[type=snow_golem,tag=cryoSummon] run tag @s remove cryoSummon

execute as @e[type=snow_golem,tag=cryoGolem,team=AquaTeam] at @s run effect give @e[team=!AquaTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=AquaTeam] at @s run effect give @a[team=AquaTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=BlueTeam] at @s run effect give @e[team=!BlueTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=BlueTeam] at @s run effect give @a[team=BlueTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=GoldTeam] at @s run effect give @e[team=!GoldTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=GoldTeam] at @s run effect give @a[team=GoldTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=GrayTeam] at @s run effect give @e[team=!GrayTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=GrayTeam] at @s run effect give @a[team=GrayTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=GreenTeam] at @s run effect give @e[team=!GreenTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=GreenTeam] at @s run effect give @a[team=GreenTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=PurpleTeam] at @s run effect give @e[team=!PurpleTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=PurpleTeam] at @s run effect give @a[team=PurpleTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=RedTeam] at @s run effect give @e[team=!RedTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=RedTeam] at @s run effect give @a[team=RedTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=YellowTeam] at @s run effect give @e[team=!YellowTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=YellowTeam] at @s run effect give @a[team=YellowTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoSummon] at @s run effect give @e[tag=!cryoSummon,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoSummon] at @s run effect give @a[tag=cryoSummon,distance=..10] speed 2 1 true



execute at @e[type=item_display,tag=damageOrb,team=AquaTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!AquaTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=AquaTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!AquaTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=BlueTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!BlueTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=BlueTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!BlueTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=GoldTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GoldTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=GoldTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GoldTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=GrayTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GrayTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=GrayTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GrayTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=GreenTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GreenTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=GreenTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GreenTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=PurpleTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!PurpleTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=PurpleTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!PurpleTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=RedTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!RedTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=RedTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!RedTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=YellowTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!YellowTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=YellowTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!YellowTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a


execute as @a run scoreboard players enable @s Trim_Recovery_Toggle
execute as @a[scores={Trim_Recovery_Toggle=1..}] run function trimabilities:recovery/playertoggle
execute as @a[scores={Trim_Recovery_Toggle=1..}] run scoreboard players set @s Trim_Recovery_Toggle 0


execute as @a if score @s vexDamage matches 100.. run scoreboard players set @s vexDamage 600
execute as @a if score @s vexDamage matches 1.. run scoreboard players remove @s vexDamage 1
execute as @a if score @s vex matches 4 if score @s vexDamage matches 1.. run scoreboard players operation @s vexDamageDisplay = @s vexDamage
execute as @a if score @s vex matches 4 if score @s vexDamage matches 1.. run scoreboard players operation @s vexDamageDisplay /= 4 constants
execute as @a if score @s vex matches 4 if score @s vexDamage matches 1.. run title @s actionbar ["",{"text":"Air Walker throttled. Please wait ","color":"red"},{"score":{"name":"@s","objective":"vexDamageDisplay"},"color":"red"},{"text":" seconds.","color":"red"}]
execute as @a if score @s vex matches 4 if score @s vexDamage matches 1 run title @s actionbar {"text":"Air Walker re-enabled.","color":"green"}

schedule function trimabilities:abilities5t 5t




