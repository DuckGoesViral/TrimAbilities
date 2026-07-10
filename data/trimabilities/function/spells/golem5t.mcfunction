# Cryo golem particles + team auras, every 5 ticks — only called while a snow golem exists.
execute as @e[type=snow_golem,tag=cryoGolem] at @s run particle minecraft:snowflake ~ ~ ~ 5 5 5 0 100 normal @a[distance=..30]

execute as @e[type=snow_golem,tag=cryoGolem,team=AquaTeam] at @s run effect give @e[team=!AquaTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=AquaTeam] at @s run effect give @a[team=AquaTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=BlueTeam] at @s run effect give @e[team=!BlueTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=BlueTeam] at @s run effect give @a[team=BlueTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=GoldTeam] at @s run effect give @e[team=!GoldTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=GoldTeam] at @s run effect give @a[team=GoldTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=GrayTeam] at @s run effect give @e[team=!GrayTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=GrayTeam] at @s run effect give @a[team=GrayTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=GreenTeam] at @s run effect give @e[team=!GreenTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=GreenTeam] at @s run effect give @a[team=GreenTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=PurpleTeam] at @s run effect give @e[team=!PurpleTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=PurpleTeam] at @s run effect give @a[team=PurpleTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=RedTeam] at @s run effect give @e[team=!RedTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=RedTeam] at @s run effect give @a[team=RedTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoGolem,team=YellowTeam] at @s run effect give @e[team=!YellowTeam,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoGolem,team=YellowTeam] at @s run effect give @a[team=YellowTeam,distance=..10] speed 2 1 true

execute as @e[type=snow_golem,tag=cryoSummon] at @s run effect give @e[tag=!cryoSummon,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoSummon] at @s run effect give @a[tag=cryoSummon,distance=..10] speed 2 1 true
