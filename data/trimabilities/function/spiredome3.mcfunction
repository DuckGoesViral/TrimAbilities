
scoreboard players remove @e[type=item_display,tag=domeGenerator] domeHealth 1
execute as @e[type=interaction,tag=domeInteraction] store success entity @s attack.player[] int 0 on attacker at @s run scoreboard players remove @e[type=item_display,tag=domeGenerator,limit=1,sort=nearest] domeHealth 2
execute as @e[type=item_display,tag=domeGenerator] at @s store result storage trimabilities:spire health int 1 run scoreboard players get @s domeHealth
execute as @e[type=text_display,tag=domeHealth] at @s run function trimabilities:spiredome3b with storage trimabilities:spire

execute as @a[tag=domed,scores={spireDeath=1..}] run tag @s remove domed

execute as @e[type=item_display,tag=domeGenerator] if score @s domeHealth matches ..-1 at @s run function trimabilities:spiredome4
