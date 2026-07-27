# Cryo golem particles + team auras, every 5 ticks - only called while a snow golem exists.
execute as @e[type=snow_golem,tag=cryoGolem] at @s run particle minecraft:snowflake ~ ~ ~ 5 5 5 0 100 normal @a[distance=..30]

# Team-agnostic aura: iterate the team registry (slow non-teammates, speed teammates).
data modify storage trimabilities:iter q set from storage teams:registry names
data modify storage trimabilities:iter cb set value "trimabilities:spells/golem5t_apply"
function trimabilities:teamiter/run

# Teamless caster's golems (tagged cryoSummon) use tag-based friend/foe instead.
execute as @e[type=snow_golem,tag=cryoSummon] at @s run effect give @e[tag=!cryoSummon,distance=..10] slowness 2 1 true
execute as @e[type=snow_golem,tag=cryoSummon] at @s run effect give @a[tag=cryoSummon,distance=..10] speed 2 1 true
