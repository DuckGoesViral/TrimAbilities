
execute as @e[type=minecraft:marker,tag=domeBarrier] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=minecraft:item_display,tag=domeGenerator] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=minecraft:marker,tag=domeBarrier] at @s run particle nautilus ^ ^ ^10 .1 .1 .1 0 10 normal
execute as @a[tag=domed] at @s unless entity @e[type=item_display,tag=domeGenerator,distance=..10] facing entity @e[type=minecraft:item_display,tag=domeGenerator,limit=1,sort=nearest] feet run tp ^ ^ ^.5
execute as @a[tag=domed] at @s unless entity @e[type=item_display,tag=domeGenerator,distance=..25] run tp @s @e[type=minecraft:item_display,tag=domeGenerator,limit=1,sort=nearest]
execute as @a[tag=!domed] at @s if entity @e[type=item_display,tag=domeGenerator,distance=..10] facing entity @e[type=minecraft:item_display,tag=domeGenerator,limit=1,sort=nearest] feet run tp ^ ^ ^-.5
execute as @e[type=item_display,tag=domeGenerator] at @s run kill @e[type=ender_pearl,distance=10..13]
execute as @e[type=item_display,tag=domeGenerator] at @s run kill @e[type=#impact_projectiles,distance=10..13]

