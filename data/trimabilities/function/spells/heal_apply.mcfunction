# Callback for teamiter: heal-pool regen aura for pools on team $(team),
# healing that team's members. Absolute selectors.
$execute as @e[type=minecraft:item_display,tag=healPool,team=$(team)] at @s run effect give @e[distance=..2.5,team=$(team)] regeneration 3 1 true
