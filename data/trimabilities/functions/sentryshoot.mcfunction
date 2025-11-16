tag @s add sentryHolder
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run damage @s[tag=!sentryHolder] 10 arrow
tag @s remove sentryHolder
scoreboard players remove @s sentryRange 1
execute if score @s sentryRange matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ air run function trimabilities:sentryshoot