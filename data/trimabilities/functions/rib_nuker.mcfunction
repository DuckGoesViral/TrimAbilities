scoreboard players set @s sneakTrigger 0

execute unless score @s cooldownRib matches 12.. run return run tellraw @s {"text": "Please wait a bit before doing this!","color": "red"}

execute run scoreboard players set @s ribUnderground 0
execute at @s unless block ~ ~4 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~5 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~6 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~7 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~8 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~9 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~10 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~11 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~12 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~13 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~14 ~ air run scoreboard players add @s ribUnderground 1
execute at @s unless block ~ ~15 ~ air run scoreboard players add @s ribUnderground 1
execute unless score @s ribUnderground matches 3.. run return run tellraw @s {"text": "You must be underground to use this ability!","color": "red"}

execute at @s run fill ~2 ~3 ~1 ~-2 ~3 ~-1 air replace stone
execute at @s run fill ~1 ~3 ~2 ~-1 ~3 ~-2 air replace stone
execute at @s run fill ~3 ~2 ~1 ~-3 ~2 ~-1 air replace stone
execute at @s run fill ~1 ~2 ~3 ~-1 ~2 ~-3 air replace stone
execute at @s run fill ~2 ~2 ~2 ~-2 ~2 ~-2 air replace stone
execute at @s run fill ~3 ~1 ~2 ~-3 ~-1 ~-2 air replace stone
execute at @s run fill ~2 ~1 ~3 ~-2 ~-1 ~-3 air replace stone
execute at @s run fill ~2 ~-3 ~1 ~-2 ~-3 ~-1 air replace stone
execute at @s run fill ~1 ~-3 ~2 ~-1 ~-3 ~-2 air replace stone
execute at @s run fill ~3 ~-2 ~1 ~-3 ~-2 ~-1 air replace stone
execute at @s run fill ~1 ~-2 ~3 ~-1 ~-2 ~-3 air replace stone
execute at @s run fill ~2 ~-2 ~2 ~-2 ~-2 ~-2 air replace stone

execute at @s run fill ~2 ~3 ~1 ~-2 ~3 ~-1 air replace deepslate
execute at @s run fill ~1 ~3 ~2 ~-1 ~3 ~-2 air replace deepslate
execute at @s run fill ~3 ~2 ~1 ~-3 ~2 ~-1 air replace deepslate
execute at @s run fill ~1 ~2 ~3 ~-1 ~2 ~-3 air replace deepslate
execute at @s run fill ~2 ~2 ~2 ~-2 ~2 ~-2 air replace deepslate
execute at @s run fill ~3 ~1 ~2 ~-3 ~-1 ~-2 air replace deepslate
execute at @s run fill ~2 ~1 ~3 ~-2 ~-1 ~-3 air replace deepslate
execute at @s run fill ~2 ~-3 ~1 ~-2 ~-3 ~-1 air replace deepslate
execute at @s run fill ~1 ~-3 ~2 ~-1 ~-3 ~-2 air replace deepslate
execute at @s run fill ~3 ~-2 ~1 ~-3 ~-2 ~-1 air replace deepslate
execute at @s run fill ~1 ~-2 ~3 ~-1 ~-2 ~-3 air replace deepslate
execute at @s run fill ~2 ~-2 ~2 ~-2 ~-2 ~-2 air replace deepslate

execute at @s run fill ~2 ~3 ~1 ~-2 ~3 ~-1 air replace netherrack
execute at @s run fill ~1 ~3 ~2 ~-1 ~3 ~-2 air replace netherrack
execute at @s run fill ~3 ~2 ~1 ~-3 ~2 ~-1 air replace netherrack
execute at @s run fill ~1 ~2 ~3 ~-1 ~2 ~-3 air replace netherrack
execute at @s run fill ~2 ~2 ~2 ~-2 ~2 ~-2 air replace netherrack
execute at @s run fill ~3 ~1 ~2 ~-3 ~-1 ~-2 air replace netherrack
execute at @s run fill ~2 ~1 ~3 ~-2 ~-1 ~-3 air replace netherrack
execute at @s run fill ~2 ~-3 ~1 ~-2 ~-3 ~-1 air replace netherrack
execute at @s run fill ~1 ~-3 ~2 ~-1 ~-3 ~-2 air replace netherrack
execute at @s run fill ~3 ~-2 ~1 ~-3 ~-2 ~-1 air replace netherrack
execute at @s run fill ~1 ~-2 ~3 ~-1 ~-2 ~-3 air replace netherrack
execute at @s run fill ~2 ~-2 ~2 ~-2 ~-2 ~-2 air replace netherrack

scoreboard players set @s cooldownRib 0