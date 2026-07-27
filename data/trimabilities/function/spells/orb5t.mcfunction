# Damage-orb AoE damage, every 5 ticks - only called while an orb exists.
# 5t cadence preserved: 2 damage per 5t = same DPS as before.
# Team-agnostic: iterate the team registry (each orb spares its own team).
data modify storage trimabilities:iter q set from storage teams:registry names
data modify storage trimabilities:iter cb set value "trimabilities:spells/orb5t_apply"
function trimabilities:teamiter/run

# Teamless orbs damage everyone nearby (no team to spare).
execute at @e[type=item_display,tag=damageOrb,team=] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb,team=] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a
