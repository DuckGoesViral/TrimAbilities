execute as @a[scores={npcClick=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] if entity @s[tag=npcFirst] run dialog show @s trimabilities:main
execute as @a[scores={npcClick=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] unless entity @s[tag=npcFirst] run dialog show @s trimabilities:first_time
execute as @a[scores={npcClick=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] unless entity @s[tag=npcFirst] run tag @s add npcFirst
execute as @a[scores={npcClick=1..}] run scoreboard players reset @s npcClick
execute as @e[type=wandering_trader,tag=npcTrim] run data merge entity @s {Offers:{Recipes:[]},NoAI:1b}


execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_shaper
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_dune
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_snout
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_host
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_vital
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_ward
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_wayfinder
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_wild
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_eye
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_raiser
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_stray
execute as @a at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run scoreboard players enable @s trade_echo

execute as @a[scores={trade_shaper=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/shaper
execute as @a[scores={trade_dune=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/dune
execute as @a[scores={trade_snout=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/snout
execute as @a[scores={trade_host=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/host
execute as @a[scores={trade_vital=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/vital
execute as @a[scores={trade_ward=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/ward
execute as @a[scores={trade_wayfinder=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/wayfinder
execute as @a[scores={trade_wild=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/wild
execute as @a[scores={trade_eye=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/eye
execute as @a[scores={trade_raiser=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/raiser
execute as @a[scores={trade_stray=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/stray
execute as @a[scores={trade_echo=1..}] at @s if entity @e[type=wandering_trader,tag=npcTrim,distance=..5] run function trimabilities:npc/trade/echo

execute as @a[scores={trade_shaper=1..}] run scoreboard players reset @s trade_shaper
execute as @a[scores={trade_dune=1..}] run scoreboard players reset @s trade_dune
execute as @a[scores={trade_snout=1..}] run scoreboard players reset @s trade_snout
execute as @a[scores={trade_host=1..}] run scoreboard players reset @s trade_host
execute as @a[scores={trade_vital=1..}] run scoreboard players reset @s trade_vital
execute as @a[scores={trade_ward=1..}] run scoreboard players reset @s trade_ward
execute as @a[scores={trade_wayfinder=1..}] run scoreboard players reset @s trade_wayfinder
execute as @a[scores={trade_wild=1..}] run scoreboard players reset @s trade_wild
execute as @a[scores={trade_eye=1..}] run scoreboard players reset @s trade_eye
execute as @a[scores={trade_raiser=1..}] run scoreboard players reset @s trade_raiser
execute as @a[scores={trade_stray=1..}] run scoreboard players reset @s trade_stray
execute as @a[scores={trade_echo=1..}] run scoreboard players reset @s trade_echo

execute as @e[type=wandering_trader,tag=npcTrim] at @s run rotate @s facing entity @p


#trade_shaper
#trade_dune
#trade_snout
#trade_host
#trade_vital
#trade_ward
#trade_wayfinder
#trade_wild
#trade_eye
#trade_raiser
#trade_stray
#trade_echo