execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function trimabilities:target
execute positioned ^ ^ ^0.5 if block ~ ~ ~ air run function trimabilities:ontarget