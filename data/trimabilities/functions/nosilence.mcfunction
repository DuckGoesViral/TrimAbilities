execute as @a[tag=nosilence] run tag @s remove silence
execute as @a[tag=nosilence] run effect clear @s strength
execute as @a[tag=nosilence] run attribute @s generic.attack_speed base set 4
execute as @a[tag=nosilence] run attribute @s generic.movement_speed base set 0.10000000149011612
execute as @a[tag=nosilence] run tag @s remove nosilence
