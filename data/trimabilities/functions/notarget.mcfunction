particle crit ~ ~ ~ 0 0 0 0 1
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 unless entity @s[dx=0] run tag @s remove target
execute positioned ^ ^ ^0.5 if block ~ ~ ~ air run function trimabilities:notarget