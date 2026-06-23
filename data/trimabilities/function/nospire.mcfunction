execute as @a[tag=nospire] run tag @s remove spire
execute as @a[tag=nospire] run attribute @s generic.max_health base set 20
execute as @a[tag=nospire] run effect clear @s resistance
execute as @a[tag=nospire] run tag @s remove nospire
