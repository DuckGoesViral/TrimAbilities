# Damage-orb AoE damage, every 5 ticks — only called while an orb exists.
# 5t cadence preserved: 2 damage per 5t = same DPS as before.
execute at @e[type=item_display,tag=damageOrb,team=AquaTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!AquaTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=AquaTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!AquaTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=BlueTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!BlueTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=BlueTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!BlueTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=GoldTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GoldTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=GoldTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GoldTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=GrayTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GrayTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=GrayTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GrayTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=GreenTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GreenTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=GreenTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!GreenTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=PurpleTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!PurpleTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=PurpleTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!PurpleTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=RedTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!RedTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=RedTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!RedTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=YellowTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!YellowTeam] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=YellowTeam] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!YellowTeam] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute at @e[type=item_display,tag=damageOrb,team=] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a
