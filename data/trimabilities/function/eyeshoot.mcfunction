particle firework ~ ~ ~ 0 0 0 0 1 normal @a
tag @s add eyeHolder
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run execute as @s[tag=!eyeHolder] at @s run particle block{block_state:{Name:redstone_block}} ~ ~1.6 ~ 0.05 0.2 0.05 0.05 40 force @a[distance=..30]
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run damage @s[tag=!eyeHolder] 40 arrow
tag @s remove eyeHolder
scoreboard players remove @s eyeRange 1
execute if score @s eyeRange matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ air run function trimabilities:eyeshoot

