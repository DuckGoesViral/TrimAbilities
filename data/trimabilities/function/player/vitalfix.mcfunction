# One-time vital overhealth repair for @s (smp temp fix).
# Dispatched from tick.mcfunction only for players still missing the fixedVital tag.
attribute @s max_health modifier remove 2-1-0-1-1
attribute @s max_health modifier remove 2-1-0-2-1
attribute @s max_health modifier remove 2-1-0-3-1
attribute @s max_health modifier remove 2-1-1-4-1
tag @s add fixedVital
