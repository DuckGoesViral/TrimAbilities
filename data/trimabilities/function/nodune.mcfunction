execute as @a[tag=nodune] run tag @s remove dune
execute as @a[tag=nodune] run effect clear @s strength
execute as @a[tag=nodune] run attribute @s generic.movement_speed base set 0.10000000149011612
execute as @a[tag=nodune] run attribute @s generic.max_health base set 20
execute as @a[tag=nodune] run tag @s remove nodune
