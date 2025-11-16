execute as @a[scores={progressRib=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:rib"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:rib"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:rib"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add rib
execute if entity @a[tag=rib,tag=!unlockedRib] as @a[tag=rib,tag=!unlockedRib] at @s run function trimabilities:unlocked/rib




execute as @a[scores={sneakTrigger=2..},tag=NBcooldownTimer,tag=rib] run scoreboard players operation @s NBcooldownCurrent = @s NBcooldownMax
execute as @a[scores={sneakTrigger=2..},tag=NBcooldownTimer,tag=rib] run scoreboard players operation @s NBcooldownCurrent -= @s NBcooldownTimer2

execute as @a[scores={sneakTrigger=2..},tag=NBcooldownTimer,tag=rib] run tellraw @s ["",{"text":"This ability is not available yet. It will be available in ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"NBcooldownCurrent"},"bold":true,"color":"yellow"},{"text":" second(s)","bold":true,"color":"red"}]
execute as @a[scores={sneakTrigger=2..},tag=NBcooldownTimer,tag=rib] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~




execute as @a[scores={sneakTrigger=2..,witherSuccess=0},tag=!NBcooldownTimer,tag=rib] at @s store success score @s witherSuccess if block ~3 ~ ~3 air run summon wither_skeleton ~3 ~ ~1 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,witherSuccess=0},tag=!NBcooldownTimer,tag=rib] at @s store success score @s witherSuccess if block ~-3 ~ ~3 air run summon wither_skeleton ~1 ~ ~3 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,witherSuccess=0},tag=!NBcooldownTimer,tag=rib] at @s store success score @s witherSuccess if block ~3 ~ ~-3 air run summon wither_skeleton ~2 ~ ~2 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,witherSuccess=0},tag=!NBcooldownTimer,tag=rib] at @s store success score @s witherSuccess if block ~-3 ~ ~-3 air run summon wither_skeleton ~-2 ~ ~-2 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,witherSuccess=0},tag=!NBcooldownTimer,tag=rib] run tellraw @s {"text": "Could not find a location to summon","color": "red","bold": true}
execute as @a[scores={sneakTrigger=2..},tag=!NBcooldownTimer,tag=rib] run weather rain 40s


execute as @a[tag=rib] run scoreboard players add @s witherNameRandom 1
execute as @e[type=wither_skeleton,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,witherNameRandom=1},tag=!NBcooldownTimer,tag=rib] run data merge entity @s {CustomName:"\"Steve\"",HandItems:[{id:"stone_sword",Count:1},{}]}
execute as @e[type=wither_skeleton,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,witherNameRandom=2},tag=!NBcooldownTimer,tag=rib] run data merge entity @s {CustomName:"\"Steeve\"",HandItems:[{id:"stone_sword",Count:1},{}]}
execute as @e[type=wither_skeleton,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,witherNameRandom=3},tag=!NBcooldownTimer,tag=rib] run data merge entity @s {CustomName:"\"Stevee\"",HandItems:[{id:"stone_sword",Count:1},{}]}
execute as @e[type=wither_skeleton,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,witherNameRandom=4},tag=!NBcooldownTimer,tag=rib] run data merge entity @s {CustomName:"\"Steevee\"",HandItems:[{id:"stone_sword",Count:1},{}]}
execute as @e[type=wither_skeleton,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,witherNameRandom=5},tag=!NBcooldownTimer,tag=rib] run data merge entity @s {CustomName:"\"Stevve\"",HandItems:[{id:"stone_sword",Count:1},{}]}
execute as @a[tag=rib,scores={witherNameRandom=5..}] run scoreboard players set @s witherNameRandom 0


execute as @e[type=wither_skeleton,tag=necroSummon] run effect give @s strength 120 1 true
execute as @e[type=wither_skeleton,tag=necroSummon] run effect give @s resistance 120 1 true
execute as @e[type=wither_skeleton,tag=necroSummon] run effect give @s speed 120 1 true
execute as @e[type=wither_skeleton,tag=necroSummon] run effect give @s fire_resistance 120 0 true
execute as @e[type=wither_skeleton,tag=necroSummon] run effect give @s glowing 120 0 true
execute as @e[type=wither_skeleton,tag=necroSummon] run effect give @s health_boost 120 4 true
execute as @e[type=wither_skeleton,tag=necroSummon] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=necroSummon] run team join necromancer @s
execute as @e[type=wither_skeleton,tag=necroSummon] run tag @s remove necroSummon


execute as @a[scores={sneakTrigger=2..,witherSuccess=1},tag=!NBcooldownTimer,tag=rib] run scoreboard players set @s NBcooldownTimer 0
execute as @a[scores={sneakTrigger=2..,witherSuccess=1},tag=!NBcooldownTimer,tag=rib] run scoreboard players set @s NBcooldownTimer2 0
execute as @a[scores={sneakTrigger=2..,witherSuccess=1},tag=!NBcooldownTimer,tag=rib] run tag @s add NBcooldownTimer
execute as @a[scores={sneakTrigger=2..,witherSuccess=1},tag=rib] run scoreboard players set @s witherSuccess 0
execute as @a[scores={sneakTrigger=2..}] run scoreboard players set @s sneakTrigger 0


execute as @a[tag=NBcooldownTimer,scores={NBcooldownTimer=..19,NBcooldownTimer2=..59}] run scoreboard players add @s NBcooldownTimer 1
execute as @a[tag=NBcooldownTimer,scores={NBcooldownTimer=20}] run scoreboard players add @s NBcooldownTimer2 1
execute as @a[tag=NBcooldownTimer,scores={NBcooldownTimer=20}] run scoreboard players set @s NBcooldownTimer 0
execute as @a[tag=NBcooldownTimer,scores={NBcooldownTimer2=60},tag=rib] run tag @s remove NBcooldownTimer