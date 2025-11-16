execute as @a[scores={progressVex=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:vex"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:vex"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:vex"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add vex
execute if entity @a[tag=vex,tag=!unlockedVex] as @a[tag=vex,tag=!unlockedVex] at @s run function trimabilities:unlocked/vex
execute as @a[tag=vex] run effect clear @s poison
execute as @a[tag=vex] run effect clear @s wither
execute as @a[tag=vex] run effect clear @s blindness
execute as @a[tag=vex] run effect clear @s darkness
execute as @a[tag=vex] run effect clear @s hunger
execute as @a[tag=vex] run effect clear @s mining_fatigue
execute as @a[tag=vex] run effect clear @s nausea
execute as @a[tag=vex] run effect clear @s slowness
execute as @a[tag=vex] run effect clear @s unluck
execute as @a[tag=vex] run effect clear @s weakness







execute as @a[scores={sneakTrigger=2..},tag=NVcooldownTimer,tag=vex] run scoreboard players operation @s NVcooldownCurrent = @s NVcooldownMax
execute as @a[scores={sneakTrigger=2..},tag=NVcooldownTimer,tag=vex] run scoreboard players operation @s NVcooldownCurrent -= @s NVcooldownTimer2

execute as @a[scores={sneakTrigger=2..},tag=NVcooldownTimer,tag=vex] run tellraw @s ["",{"text":"This ability is not available yet. It will be available in ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"NVcooldownCurrent"},"bold":true,"color":"yellow"},{"text":" second(s)","bold":true,"color":"red"}]
execute as @a[scores={sneakTrigger=2..},tag=NVcooldownTimer,tag=vex] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~



execute as @a[scores={sneakTrigger=2..,vexSuccess=0},tag=!NVcooldownTimer,tag=vex] at @s store success score @s vexSuccess if block ~3 ~ ~3 air run summon vex ~3 ~ ~1 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,vexSuccess=0},tag=!NVcooldownTimer,tag=vex] at @s store success score @s vexSuccess if block ~-3 ~ ~3 air run summon vex ~1 ~ ~3 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,vexSuccess=0},tag=!NVcooldownTimer,tag=vex] at @s store success score @s vexSuccess if block ~3 ~ ~-3 air run summon vex ~2 ~ ~2 {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,vexSuccess=0},tag=!NVcooldownTimer,tag=vex] at @s store success score @s vexSuccess if block ~-3 ~ ~-3 air run summon vex ~-2 ~ ~-2 {Tags:[necroSummon]}
execute as @e[type=vex,tag=necroSummon] at @s run summon vex ~ ~ ~ {Tags:[necroSummon]}
execute as @e[type=vex,tag=necroSummon] at @s run summon vex ~ ~ ~ {Tags:[necroSummon]}
execute as @a[scores={sneakTrigger=2..,vexSuccess=0},tag=!NVcooldownTimer,tag=vex] run tellraw @s {"text": "Could not find a location to summon","color": "red","bold": true}
execute as @a[scores={sneakTrigger=2..},tag=!NVcooldownTimer,tag=vex] run weather rain 60s


execute as @a[tag=vex] run scoreboard players add @s vexNameRandom 1
execute as @e[type=vex,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,vexNameRandom=1},tag=!NVcooldownTimer,tag=vex] run data merge entity @s {CustomName:"\"Steve\"",HandItems:[{id:"iron_sword",Count:1},{}]}
execute as @e[type=vex,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,vexNameRandom=2},tag=!NVcooldownTimer,tag=vex] run data merge entity @s {CustomName:"\"Steeve\"",HandItems:[{id:"iron_sword",Count:1},{}]}
execute as @e[type=vex,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,vexNameRandom=3},tag=!NVcooldownTimer,tag=vex] run data merge entity @s {CustomName:"\"Stevee\"",HandItems:[{id:"iron_sword",Count:1},{}]}
execute as @e[type=vex,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,vexNameRandom=4},tag=!NVcooldownTimer,tag=vex] run data merge entity @s {CustomName:"\"Steevee\"",HandItems:[{id:"iron_sword",Count:1},{}]}
execute as @e[type=vex,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,vexNameRandom=5},tag=!NVcooldownTimer,tag=vex] run data merge entity @s {CustomName:"\"Stevve\"",HandItems:[{id:"iron_sword",Count:1},{}]}
execute as @a[tag=vex,scores={vexNameRandom=5..}] run scoreboard players set @s vexNameRandom 0


execute as @e[type=vex,tag=necroSummon] run effect give @s strength 120 2 true
execute as @e[type=vex,tag=necroSummon] run effect give @s resistance 120 2 true
execute as @e[type=vex,tag=necroSummon] run effect give @s speed 120 1 true
execute as @e[type=vex,tag=necroSummon] run effect give @s fire_resistance 120 0 true
execute as @e[type=vex,tag=necroSummon] run effect give @s glowing 120 0 true
execute as @e[type=vex,tag=necroSummon] run effect give @s health_boost 120 9 true
execute as @e[type=vex,tag=necroSummon] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=necroSummon] run team join necromancer @s
execute as @e[type=vex,tag=necroSummon] run tag @s remove necroSummon


execute as @a[scores={sneakTrigger=2..,vexSuccess=1},tag=!NVcooldownTimer,tag=vex] run scoreboard players set @s NVcooldownTimer 0
execute as @a[scores={sneakTrigger=2..,vexSuccess=1},tag=!NVcooldownTimer,tag=vex] run scoreboard players set @s NVcooldownTimer2 0
execute as @a[scores={sneakTrigger=2..,vexSuccess=1},tag=!NVcooldownTimer,tag=vex] run tag @s add NVcooldownTimer
execute as @a[scores={sneakTrigger=2..,vexSuccess=1},tag=vex] run scoreboard players set @s vexSuccess 0
execute as @a[scores={sneakTrigger=2..}] run scoreboard players set @s sneakTrigger 0


execute as @a[tag=NVcooldownTimer,scores={NVcooldownTimer=..19,NVcooldownTimer2=..59}] run scoreboard players add @s NVcooldownTimer 1
execute as @a[tag=NVcooldownTimer,scores={NVcooldownTimer=20}] run scoreboard players add @s NVcooldownTimer2 1
execute as @a[tag=NVcooldownTimer,scores={NVcooldownTimer=20}] run scoreboard players set @s NVcooldownTimer 0
execute as @a[tag=NVcooldownTimer,scores={NVcooldownTimer2=60},tag=vex] run tag @s remove NVcooldownTimer