tag @s add eyeHolder
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run damage @s[tag=!eyeHolder] 50 arrow
tag @s remove eyeHolder
scoreboard players remove @s eyeRange 1
execute if score @s eyeRange matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ air run function trimabilities:eyeshoot

