execute as @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:host"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:host"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:host"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add host
execute if entity @a[tag=host,tag=!unlockedHost] as @a[tag=host,tag=!unlockedHost] at @s run function trimabilities:unlocked/host
execute as @a[tag=host,scores={mcLvl=1..}] run effect give @s slowness infinite 0 true
execute as @a[tag=host,scores={mcLvl=1..,tLvl=0}] run attribute @s generic.max_health base set 24
execute as @a[tag=host,scores={mcLvl=1..,tLvl=1..}] run attribute @s generic.max_health base set 25
execute as @a[tag=host,scores={mcLvl=1..}] run effect give @s resistance infinite 0 true