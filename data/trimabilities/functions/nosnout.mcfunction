execute as @a[tag=nosnout] run tag @s remove snout
execute as @a[tag=nosnout] run effect clear @s fire_resistance
execute as @a[tag=nosnout] run effect clear @s strength
execute as @a[tag=nosnout] run effect clear @s speed
execute as @a[tag=nosnout] run attribute @s generic.max_health base set 20
execute as @a[tag=nosnout] run tag @s remove nosnout
