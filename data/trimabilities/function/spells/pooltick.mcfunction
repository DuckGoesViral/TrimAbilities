# Heal-pool movement + lifetime, every tick — only called while a healPool exists.
execute as @e[type=item_display,tag=healPool] run scoreboard players add @s orbDeath 1
execute at @e[type=item_display,tag=healPool,scores={orbDeath=400..}] run particle minecraft:heart ~ ~-.25 ~ .1 .1 .1 .1 5 normal @a
execute as @e[type=item_display,tag=healPool,scores={orbDeath=400..}] run kill @s

execute as @e[type=minecraft:item_display,tag=healPool] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=minecraft:item_display,tag=healPool] at @s run particle minecraft:egg_crack ^ ^ ^2.5
