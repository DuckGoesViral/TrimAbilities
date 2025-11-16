execute as @a[tag=noshaper] run tag @s remove shaper
execute as @a[tag=noshaper] run effect clear @s strength
execute as @a[tag=noshaper] run attribute @s generic.max_health base set 20
execute as @a[tag=noshaper] run tag @s remove noshaper
