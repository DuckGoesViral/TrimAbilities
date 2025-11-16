execute as @a[scores={progressWard=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run tag @s add ward
execute if entity @a[tag=ward,tag=!unlockedWard] as @a[tag=ward,tag=!unlockedWard] at @s run function trimabilities:unlocked/ward
execute as @a[tag=ward,scores={mcLvl=5..,tLvl=3..}] run attribute @s generic.max_health base set 28
execute as @a[tag=ward,scores={mcLvl=5..,tLvl=4..}] run attribute @s generic.max_health base set 30
execute as @a[tag=ward,scores={mcLvl=5..,tLvl=5..}] run attribute @s generic.max_health base set 32
execute as @a[tag=ward,scores={mcLvl=5..,tLvl=3..}] run effect give @s slowness infinite 1 true
execute as @a[tag=ward,scores={mcLvl=5..,tLvl=3..}] run effect give @s resistance infinite 2 true
