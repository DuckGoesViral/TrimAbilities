execute as @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:shaper"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:shaper"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:shaper"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add shaper
execute if entity @a[tag=shaper,tag=!unlockedShaper] as @a[tag=shaper,tag=!unlockedShaper] at @s run function trimabilities:unlocked/shaper
execute as @a[tag=shaper] run effect give @s strength infinite 0 true
execute as @a[tag=shaper,scores={wLvl=0}] run attribute @s generic.max_health base set 15
execute as @a[tag=shaper,scores={wLvl=1..}] run attribute @s generic.max_health base set 16

