

execute at @s run summon arrow ~ ~ ~ {Tags:["sentryBarrage"]}

scoreboard players remove @s sentryArrowSummon 1

execute if score @s sentryArrowSummon matches 1.. run function trimabilities:sentrysummon

