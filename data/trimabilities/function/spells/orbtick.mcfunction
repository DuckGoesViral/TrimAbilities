# Damage-orb movement + lifetime, every tick — only called while an orb
# (or an orphaned orb marker) exists. Player immunity decay stays in abilities1t.
execute as @e[type=item_display,tag=damageOrb] run scoreboard players add @s orbDeath 1
execute as @e[type=armor_stand,tag=damageOrbMarker] run scoreboard players add @s orbDeath 1

execute at @e[type=item_display,tag=damageOrb,scores={orbDeath=600..}] run particle minecraft:poof ~ ~-.25 ~ .1 .1 .1 .1 15 normal @a
execute as @e[type=item_display,tag=damageOrb,scores={orbDeath=600..}] run kill @s
execute as @e[type=armor_stand,tag=damageOrbMarker,scores={orbDeath=600..}] run kill @s

execute as @e[type=armor_stand,tag=damageOrbMarker] at @s run tp ^ ^ ^-.025
execute as @e[type=item_display,tag=damageOrb] at @s at @e[type=armor_stand,tag=damageOrbMarker,limit=1,sort=nearest] run tp ~ ~2 ~
execute at @e[type=item_display,tag=damageOrb] run particle minecraft:smoke ~ ~-.25 ~ .1 .1 .1 0 5 normal @a
