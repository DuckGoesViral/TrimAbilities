# Homing-missile steering, runs every tick while missiles exist.
# Called existence-gated from abilities1t. Logic verbatim from main.
execute as @e[tag=missileMarker] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~
execute as @e[type=item_display,tag=homingMissile] at @s positioned ~ ~2 ~ at @e[type=armor_stand,tag=missileMarker,limit=1,sort=nearest] run tp ~ ~2 ~
