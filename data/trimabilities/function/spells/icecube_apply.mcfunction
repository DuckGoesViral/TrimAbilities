# Callback for teamiter: if the caster (@s) is on team $(team), freeze nearby
# non-teammates. Runs as @s (the caster). (Fixes the old always-!AquaTeam bug.)
$execute at @s if entity @s[team=$(team)] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,team=!$(team),distance=..10] run tag @s add frozen
