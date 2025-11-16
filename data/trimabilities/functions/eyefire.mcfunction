scoreboard objectives add eyeRange dummy


execute as @s[scores={sneakTrigger=2..}] run scoreboard players set @s eyeRange 250
execute as @s[scores={sneakTrigger=2..}] at @s anchored eyes run playsound minecraft:entity.generic.explode ambient @a[distance=..150] ~ ~ ~ 0.2 2
execute as @s[scores={sneakTrigger=2..}] at @s anchored eyes run function trimabilities:eyeshoot
execute as @s[scores={sneakTrigger=2..}] at @s anchored eyes run scoreboard players set @s snipeCharge 0


execute as @s[scores={sneakTrigger=2..}] run scoreboard players set @s sneakTrigger 0
