
execute unless score @s dune = @s duneOld run attribute @s generic.max_health modifier remove 1-2-1-4-1
execute unless score @s dune = @s duneOld run attribute @s generic.movement_speed modifier remove 1-2-1-4-2
execute unless score @s dune = @s duneOld run effect clear @s strength
execute unless score @s dune = @s duneOld run effect clear @s speed


execute if score @s dune matches 0 run tag @s remove dune
execute if score @s dune matches 0 run tag @s remove dune

execute if score @s dune matches 1 run effect give @s speed infinite 0 true
execute if score @s dune matches 2 run effect give @s speed infinite 1 true
execute if score @s dune matches 3 run effect give @s speed infinite 2 true

execute if score @s dune matches 4 if entity @s[tag=!unlockedDune] at @s run function trimabilities:unlocked/dune

execute if score @s dune matches 4 run effect give @s strength infinite 0 true
execute if score @s dune matches 4 run attribute @s generic.max_health modifier add 1-2-1-4-1 "dune_full_1" -5 add
execute if score @s dune matches 4 run attribute @s generic.movement_speed modifier add 1-2-1-4-2 "dune_full_2" .2 add

scoreboard players operation @s duneOld = @s dune


# execute if score @s dune matches 0 run tag @s remove dune


# execute if score @s dune matches 3 if entity @s[tag=duneFull] run attribute @s generic.movement_speed base set 0.1
# execute if score @s dune matches 3 if entity @s[tag=duneFull] run attribute @s generic.max_health base set 20
# execute if score @s dune matches 3 if entity @s[tag=duneFull] run effect clear @s strength
# execute if score @s dune matches 3 if entity @s[tag=duneFull] run tag @s remove duneFull


# execute if score @s dune matches 4 if entity @s[tag=!unlockedDune] at @s run function trimabilities:unlocked/dune

# execute if score @s dune matches 4 run effect give @s strength infinite 0 true
# execute if score @s dune matches 4 run attribute @s generic.movement_speed base set 0.2
# execute if score @s dune matches 4 run attribute @s generic.max_health base set 15
# execute if score @s dune matches 4 run tag @s add duneFull




#execute as @a[scores={progressDune=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add dune
#execute if entity @a[tag=dune,tag=!unlockedDune] as @a[tag=dune,tag=!unlockedDune] at @s run function trimabilities:unlocked/dune
#execute as @a[tag=dune] run effect give @s strength infinite 0 true
#execute as @a[tag=dune] run attribute @s generic.max_health base set 15
#execute as @a[tag=dune,tag=wLvl2] run attribute @s generic.movement_speed base set 0.2
#execute as @a[tag=dune,tag=wLvl3] run attribute @s generic.movement_speed base set 0.21
#execute as @a[tag=dune,tag=wLvl4] run attribute @s generic.movement_speed base set 0.22
#execute as @a[tag=dune,tag=wLvl5] run attribute @s generic.movement_speed base set 0.23
