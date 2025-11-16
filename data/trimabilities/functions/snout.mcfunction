execute as @a[scores={progressSnout=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run tag @s add snout
execute if entity @a[tag=snout,tag=!unlockedSnout] as @a[tag=snout,tag=!unlockedSnout] at @s run function trimabilities:unlocked/snout
execute as @a[tag=snout,scores={wLvl=..4}] run attribute @s generic.max_health base set 14
execute as @a[tag=snout,scores={wLvl=5..}] run attribute @s generic.max_health base set 15
execute as @a[tag=snout] run effect give @s strength infinite 1 true
execute as @a[tag=snout] run effect give @s speed infinite 1 true
execute as @a[tag=snout] run effect give @s fire_resistance infinite 0 true