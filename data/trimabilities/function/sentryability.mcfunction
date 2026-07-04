

execute at @s run particle minecraft:raid_omen ~ ~4 ~ 1 1 1 0 3 normal @a


execute unless score @s sentryStep1 matches 1 run scoreboard players operation @s sentryArrows = @s sentryCharge
execute unless score @s sentryStep1 matches 1 run scoreboard players operation @s sentryArrows *= @s sentryArrows
execute unless score @s sentryStep1 matches 1 run scoreboard players operation @s sentryRadius = @s sentryCharge
execute unless score @s sentryStep1 matches 1 run scoreboard players operation @s sentryRadius += 1 constants
execute unless score @s sentryStep1 matches 1 run scoreboard players operation @s sentryRadius /= 2 constants
execute unless score @s sentryStep1 matches 1 run data merge entity @s {pickup:0b}
execute unless score @s sentryStep1 matches 1 run scoreboard players set @s sentryCooldown 10
execute unless score @s sentryStep1 matches 1 run scoreboard players set @s sentryStep1 1


execute unless score @s sentryCooldown matches 1.. run scoreboard players set @s sentryArrowSummon 0
execute unless score @s sentryCooldown matches 1.. if score @s sentryArrows matches 1000.. run scoreboard players set @s sentryArrowSummon 1000
execute unless score @s sentryCooldown matches 1.. if score @s sentryArrows matches 1..999 run scoreboard players operation @s sentryArrowSummon = @s sentryArrows

execute unless score @s sentryCooldown matches 1.. run scoreboard players operation @s sentryArrows -= @s sentryArrowSummon
execute unless score @s sentryCooldown matches 1.. run function trimabilities:sentrysummon

 
execute store result storage trimabilities:sentry radius int 1 run scoreboard players get @s sentryRadius

execute unless score @s sentryCooldown matches 1.. as @s at @s run function trimabilities:sentrywave1000 with storage trimabilities:sentry

scoreboard players remove @s sentryCooldown 1

execute unless score @s sentryArrows matches 1.. run kill @s
