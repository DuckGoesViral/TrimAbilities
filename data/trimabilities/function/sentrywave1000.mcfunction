
#
$execute at @s run spreadplayers ~ ~ .5 $(radius) false @e[type=arrow,distance=..3,tag=sentryBarrage]
#execute at @s run spreadplayers ~ ~ 1 5 false @e[type=arrow,distance=..3,tag=barrage]

$tellraw @a ["",{"text":"$(radius) \u0020"},{"selector":"@s"}]

execute at @s as @e[type=arrow,tag=sentryBarrage] at @s run tp ~ ~50 ~

scoreboard players set @s sentryCooldown 4
