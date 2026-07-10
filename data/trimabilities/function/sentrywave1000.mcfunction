
#
$execute at @s run spreadplayers ~ ~ .5 $(radius) false @e[type=arrow,distance=..3,tag=sentryBarrage]
#execute at @s run spreadplayers ~ ~ 1 5 false @e[type=arrow,distance=..3,tag=barrage]

#$tellraw @a ["",{"text":"$(radius) \u0020"},{"selector":"@s"}]

execute at @s if score @s sentryCharge matches 5..15 as @e[type=arrow,tag=sentryBarrage] store result score @s sentryHeight run random value 20..30
execute at @s if score @s sentryCharge matches 16..49 as @e[type=arrow,tag=sentryBarrage] store result score @s sentryHeight run random value 40..60
execute at @s if score @s sentryCharge matches 50..100 as @e[type=arrow,tag=sentryBarrage] store result score @s sentryHeight run random value 75..100

execute as @e[type=arrow,tag=sentryBarrage] at @s run function trimabilities:sentryheight

execute as @e[type=arrow,tag=sentryBarrage] run data merge entity @s {Motion:[0.0d,-2.0d,0.0d]}
#at @s if score @s sentryCharge matches 5..15

scoreboard players set @s sentryCooldown 50
