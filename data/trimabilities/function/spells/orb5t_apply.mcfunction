# Callback for teamiter: damage-orb AoE for orbs on team $(team), sparing that
# team's members. Absolute selectors, so caller context is irrelevant.
$execute at @e[type=item_display,tag=damageOrb,team=$(team)] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!$(team)] run damage @s 2 magic
$execute at @e[type=item_display,tag=damageOrb,team=$(team)] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker,team=!$(team)] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a
