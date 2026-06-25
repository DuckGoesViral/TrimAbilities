execute at @s run playsound minecraft:entity.warden.sonic_boom player @a[distance=..30] ~ ~ ~ 1 1 1
execute at @s anchored eyes run execute positioned ^ ^ ^2 as @a[distance=..2] run damage @s 15 sonic_boom
execute at @s anchored eyes run execute positioned ^ ^ ^3 as @a[distance=..3] run damage @s 15 sonic_boom
execute at @s anchored eyes run execute positioned ^ ^ ^4 as @a[distance=..3] run damage @s 15 sonic_boom
execute at @s anchored eyes run execute positioned ^ ^ ^5 as @a[distance=..3] run damage @s 15 sonic_boom
execute at @s anchored eyes run execute positioned ^ ^ ^2 as @e[type=!player,distance=..2] run damage @s 25 sonic_boom
execute at @s anchored eyes run execute positioned ^ ^ ^3 as @e[type=!player,distance=..3] run damage @s 25 sonic_boom
execute at @s anchored eyes run execute positioned ^ ^ ^4 as @e[type=!player,distance=..3] run damage @s 25 sonic_boom
execute at @s anchored eyes run execute positioned ^ ^ ^5 as @e[type=!player,distance=..3] run damage @s 25 sonic_boom
#execute at @s anchored eyes run execute positioned ^ ^ ^2 run summon minecraft:wind_charge ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d]}
#execute at @s anchored eyes run execute positioned ^ ^ ^3 run summon minecraft:wind_charge ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d]}
#execute at @s anchored eyes run execute positioned ^ ^ ^4 run summon minecraft:wind_charge ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d]}
#execute at @s anchored eyes run execute positioned ^ ^ ^5 run summon minecraft:wind_charge ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d]}
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^1 0 0 0 0 1 normal @a[distance=..50]
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^2 0 0 0 0 1 normal @a[distance=..50]
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^3 0 0 0 0 1 normal @a[distance=..50]
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^4 0 0 0 0 1 normal @a[distance=..50]
execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^5 0 0 0 0 1 normal @a[distance=..50]
execute run tellraw @s ["",{"text":"SONIC","bold":true,"color":"green"},{"text":"BOOM","bold":true,"color":"dark_purple"}]
execute run tellraw @s ["",{"text":"This ability will ","color":"red"},{"text":"not activate","bold":true,"color":"red"},{"text":" for the next ","color":"red"},{"text":"60","bold":true,"color":"red"},{"text":" seconds","color":"red"}]
execute run scoreboard players set @s cooldownSilence 0
