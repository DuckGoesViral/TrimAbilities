
execute at @s run particle minecraft:flash{color:[1.0, 1.0, 1.0, 1.0]} ~ ~1 ~ 0 0 0 0 3 normal @a
execute at @s run particle minecraft:large_smoke ~ ~2 ~ 0.1 0.1 0.1 0 15 normal @a

scoreboard objectives add eyeRange dummy


scoreboard players set @s eyeRange 500
execute at @s anchored eyes run playsound minecraft:entity.generic.explode ambient @a[distance=..150] ~ ~ ~ 10 2
execute at @s anchored eyes run function trimabilities:eyeshoot

scoreboard players set @s eyeReload 0