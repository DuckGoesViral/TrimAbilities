
execute unless score @s dune = @s duneOld run attribute @s generic.max_health modifier remove 1-2-1-4-1
execute unless score @s dune = @s duneOld run attribute @s generic.movement_speed modifier remove 1-2-1-4-2
execute unless score @s dune = @s duneOld run effect clear @s strength
execute unless score @s dune = @s duneOld run effect clear @s speed


execute if score @s dune matches 0 run tag @s remove dune
execute if score @s dune matches 0 run tag @s remove dune

execute if score @s dune matches 1 run effect give @s speed infinite 0 true
execute if score @s dune matches 2 run effect give @s speed infinite 1 true
execute if score @s dune matches 3 run effect give @s speed infinite 2 true

execute if score @s dune matches 4 if entity @s[tag=!unlockedDune] at @s run function trimabilities:unlocked/dune

execute if score @s dune matches 4 run effect give @s strength infinite 0 true
execute if score @s dune matches 4 run effect give @s speed infinite 2 true
execute if score @s dune matches 4 run attribute @s generic.max_health modifier add 1-2-1-4-1 "dune_full_1" -5 add

scoreboard players operation @s duneOld = @s dune


execute if score @s dune matches 4 if score @s sneakTrigger matches 2.. if score @s cooldownDuneDisplay matches ..0 run effect give @s speed 12 4 true
execute if score @s dune matches 4 if score @s sneakTrigger matches 2.. if score @s cooldownDuneDisplay matches ..0 at @s run playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ .1 1 .1
execute if score @s dune matches 4 if score @s sneakTrigger matches 2.. unless score @s cooldownDuneDisplay matches ..0 run tellraw @s [{"text":"This ability is on cooldown for ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"cooldownDuneDisplay"},"bold":true,"color":"red"},{"text":" seconds!","bold":true,"color":"red"}]
execute if score @s dune matches 4 if score @s sneakTrigger matches 2.. if score @s cooldownDuneDisplay matches ..0 run scoreboard players set @s cooldownDuneDisplay 40
execute if score @s dune matches 4 if score @s sneakTrigger matches 2.. run scoreboard players reset @s sneakTrigger

execute if score @s cooldownDuneDisplay matches 28.. at @s run particle minecraft:white_smoke ~ ~ ~ .1 .1 .1 .1 25 normal @a[distance=..25]


execute unless score @s cooldownDuneDisplay matches ..0 run scoreboard players add @s cooldownDune 1
execute if score @s cooldownDune matches 4.. run scoreboard players remove @s cooldownDuneDisplay 1
execute if score @s cooldownDune matches 4.. run scoreboard players reset @s cooldownDune

