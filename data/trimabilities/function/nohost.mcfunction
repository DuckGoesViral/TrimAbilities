execute as @a[tag=nohost] run tag @s remove host
execute as @a[tag=nohost] run effect clear @s resistance
execute as @a[tag=nohost] run effect clear @s slowness
execute as @a[tag=nohost] run attribute @s generic.max_health base set 20
execute as @a[tag=nohost] run tag @s remove nohost
