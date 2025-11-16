execute as @a[scores={progressWild=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wild"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:wild"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:wild"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run tag @s add wild
execute if entity @a[tag=wild,tag=!unlockedWild] as @a[tag=wild,tag=!unlockedWild] at @s run function trimabilities:unlocked/wild
execute as @a[tag=wild] run function trimabilities:wildarrow
execute as @a[tag=wild] run effect give @s jump_boost infinite 3 true
execute as @a[tag=wild] run effect give @s weakness infinite 0 true
execute as @a[tag=wild] run attribute @s generic.movement_speed base set 0.125
