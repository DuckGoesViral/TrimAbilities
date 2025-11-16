execute as @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:raiser"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:raiser"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:raiser"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add raiser
execute if entity @a[tag=raiser,tag=!unlockedRaiser] as @a[tag=raiser,tag=!unlockedRaiser] at @s run function trimabilities:unlocked/raiser




execute as @a[scores={sneakTrigger=2..},tag=NRcooldownTimer,tag=raiser] run scoreboard players operation @s NRcooldownCurrent = @s NRcooldownMax
execute as @a[scores={sneakTrigger=2..},tag=NRcooldownTimer,tag=raiser] run scoreboard players operation @s NRcooldownCurrent -= @s NRcooldownTimer2

execute as @a[scores={sneakTrigger=2..},tag=NRcooldownTimer,tag=raiser] run tellraw @s ["",{"text":"This ability is not available yet. It will be available in ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"NRcooldownCurrent"},"bold":true,"color":"yellow"},{"text":" second(s)","bold":true,"color":"red"}]
execute as @a[scores={sneakTrigger=2..},tag=NRcooldownTimer,tag=raiser] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~





execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser] at @s store success score @s zombieSuccess if block ~3 ~ ~3 air run summon zombie ~3 ~ ~1 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser] at @s store success score @s zombieSuccess if block ~-3 ~ ~3 air run summon zombie ~1 ~ ~3 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser] at @s store success score @s zombieSuccess if block ~3 ~ ~-3 air run summon zombie ~2 ~ ~2 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser] at @s store success score @s zombieSuccess if block ~-3 ~ ~-3 air run summon zombie ~-2 ~ ~-2 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser] run tellraw @s {"text": "Could not find a location to summon","color": "red","bold": true}
execute as @a[scores={sneakTrigger=2..},tag=!NRcooldownTimer,tag=raiser] run weather rain 20s


execute as @a[tag=raiser] run scoreboard players add @s zombieNameRandom 1
execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=1},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Steve\""}
execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=2},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Steeve\""}
execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=3},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Stevee\""}
execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=4},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Steevee\""}
execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=5},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Stevve\""}
execute as @a[tag=raiser,scores={zombieNameRandom=5..}] run scoreboard players set @s zombieNameRandom 0


execute as @e[type=zombie,tag=necroSummon] run effect give @s strength 120 0 true
execute as @e[type=zombie,tag=necroSummon] run effect give @s resistance 120 0 true
execute as @e[type=zombie,tag=necroSummon] run effect give @s speed 120 0 true
execute as @e[type=zombie,tag=necroSummon] run effect give @s fire_resistance 120 0 true
execute as @e[type=zombie,tag=necroSummon] run effect give @s glowing 120 0 true
execute as @e[type=zombie,tag=necroSummon] run effect give @s health_boost 120 2 true
execute as @e[type=zombie,tag=necroSummon] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=necroSummon] run team join necromancer @s
execute as @e[type=zombie,tag=necroSummon] run tag @s remove necroSummon


execute as @a[scores={sneakTrigger=2..,zombieSuccess=1},tag=!NRcooldownTimer,tag=raiser] run scoreboard players set @s NRcooldownTimer 0
execute as @a[scores={sneakTrigger=2..,zombieSuccess=1},tag=!NRcooldownTimer,tag=raiser] run scoreboard players set @s NRcooldownTimer2 0
execute as @a[scores={sneakTrigger=2..,zombieSuccess=1},tag=!NRcooldownTimer,tag=raiser] run tag @s add NRcooldownTimer
execute as @a[scores={sneakTrigger=2..,zombieSuccess=1},tag=raiser] run scoreboard players set @s zombieSuccess 0
execute as @a[scores={sneakTrigger=2..}] run scoreboard players set @s sneakTrigger 0


execute as @a[tag=NRcooldownTimer,scores={NRcooldownTimer=..19,NRcooldownTimer2=..59}] run scoreboard players add @s NRcooldownTimer 1
execute as @a[tag=NRcooldownTimer,scores={NRcooldownTimer=20}] run scoreboard players add @s NRcooldownTimer2 1
execute as @a[tag=NRcooldownTimer,scores={NRcooldownTimer=20}] run scoreboard players set @s NRcooldownTimer 0
execute as @a[tag=NRcooldownTimer,scores={NRcooldownTimer2=60},tag=raiser] run tag @s remove NRcooldownTimer