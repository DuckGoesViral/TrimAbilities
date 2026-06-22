execute as @a[tag=noward] run tag @s remove ward
execute as @a[tag=noward] run effect clear @s slowness
execute as @a[tag=noward] run effect clear @s resistance
execute as @a[tag=noward] run attribute @s generic.max_health base set 20
execute as @a[tag=noward] run tag @s remove noward