execute as @a[tag=nowild] run tag @s remove wild
execute as @a[tag=nowild] run effect clear @s jump_boost
execute as @a[tag=nowild] run effect clear @s weakness
execute as @a[tag=nowild] run attribute @s generic.movement_speed base set 0.10000000149011612
execute as @a[tag=nowild] run tag @s remove nowild
