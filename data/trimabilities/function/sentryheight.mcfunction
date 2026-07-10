
execute at @s run tp ~ ~1 ~

scoreboard players remove @s sentryHeight 1

execute unless score @s sentryHeight matches 0 run function trimabilities:sentryheight
