execute as @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add wayfinder
execute if entity @a[tag=wayfinder,tag=!unlockedWayfinder] as @a[tag=wayfinder,tag=!unlockedWayfinder] at @s run function trimabilities:unlocked/wayfinder
execute as @a[tag=wayfinder] run function trimabilities:wayfinderarrow
execute as @a[tag=wayfinder] run effect give @s weakness infinite 0 true