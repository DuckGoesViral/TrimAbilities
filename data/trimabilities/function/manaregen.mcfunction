

execute as @s[tag=mLvl5] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 9 normal @a[distance=..15]
execute as @s[tag=mLvl5] run return run scoreboard players add @s mana 9

execute as @s[tag=mLvl3] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 8 normal @a[distance=..15]
execute as @s[tag=mLvl3] run return run scoreboard players add @s mana 8

execute as @s[tag=mLvl1] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 7 normal @a[distance=..15]
execute as @s[tag=mLvl1] run return run scoreboard players add @s mana 7

execute at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 6 normal @a[distance=..15]
scoreboard players add @s mana 6

