execute as @a[scores={progressTide=2..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:tide"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:tide"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:tide"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run tag @s add tide
execute if entity @a[tag=tide,tag=!unlockedTide] as @a[tag=tide,tag=!unlockedTide] at @s run function trimabilities:unlocked/tide
execute as @a[tag=tide] run effect give @s water_breathing infinite 0 true
execute as @a[tag=tide] run effect give @s dolphins_grace infinite 0 true
execute as @a[tag=tide] run effect give @s conduit_power infinite 0 true

