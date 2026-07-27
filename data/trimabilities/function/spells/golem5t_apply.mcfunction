# Callback for teamiter: cryo golem aura for golems on team $(team) - slow
# non-teammates, speed teammates. Absolute selectors.
$execute as @e[type=snow_golem,tag=cryoGolem,team=$(team)] at @s run effect give @e[team=!$(team),distance=..10] slowness 2 1 true
$execute as @e[type=snow_golem,tag=cryoGolem,team=$(team)] at @s run effect give @a[team=$(team),distance=..10] speed 2 1 true
