execute as @a[scores={progressDune=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add dune
execute if entity @a[tag=dune,tag=!unlockedDune] as @a[tag=dune,tag=!unlockedDune] at @s run function trimabilities:unlocked/dune
execute as @a[tag=dune] run effect give @s strength infinite 0 true
execute as @a[tag=dune] run attribute @s generic.max_health base set 15
execute as @a[tag=dune,tag=wLvl2] run attribute @s generic.movement_speed base set 0.2
execute as @a[tag=dune,tag=wLvl3] run attribute @s generic.movement_speed base set 0.21
execute as @a[tag=dune,tag=wLvl4] run attribute @s generic.movement_speed base set 0.22
execute as @a[tag=dune,tag=wLvl5] run attribute @s generic.movement_speed base set 0.23
