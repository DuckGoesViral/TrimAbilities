#AquaTeam
#BlueTeam
#GoldTeam
#GrayTeam
#GreenTeam
#PurpleTeam
#RedTeam
#YellowTeam



execute as @e[type=minecraft:item_display,tag=healPool,team=AquaTeam] at @s run effect give @e[distance=..2.5,team=AquaTeam] regeneration 3 1 true
execute as @e[type=minecraft:item_display,tag=healPool,team=BlueTeam] at @s run effect give @e[distance=..2.5,team=BlueTeam] regeneration 3 1 true
execute as @e[type=minecraft:item_display,tag=healPool,team=GoldTeam] at @s run effect give @e[distance=..2.5,team=GoldTeam] regeneration 3 1 true
execute as @e[type=minecraft:item_display,tag=healPool,team=GrayTeam] at @s run effect give @e[distance=..2.5,team=GrayTeam] regeneration 3 1 true
execute as @e[type=minecraft:item_display,tag=healPool,team=GreenTeam] at @s run effect give @e[distance=..2.5,team=GreenTeam] regeneration 3 1 true
execute as @e[type=minecraft:item_display,tag=healPool,team=PurpleTeam] at @s run effect give @e[distance=..2.5,team=PurpleTeam] regeneration 3 1 true
execute as @e[type=minecraft:item_display,tag=healPool,team=RedTeam] at @s run effect give @e[distance=..2.5,team=RedTeam] regeneration 3 1 true
execute as @e[type=minecraft:item_display,tag=healPool,team=YellowTeam] at @s run effect give @e[distance=..2.5,team=YellowTeam] regeneration 3 1 true
execute as @e[type=minecraft:item_display,tag=healPool,team=] at @s run effect give @e[distance=..2.5] regeneration 3 1 true




#necromancy stuf

execute as @e[tag=necroSummon] run scoreboard players add @s necroDamage 1

execute as @e[tag=necroSummon,team=AquaTeam,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!AquaTeam]
execute as @e[tag=necroSummon,team=BlueTeam,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!BlueTeam]
execute as @e[tag=necroSummon,team=GoldTeam,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!GoldTeam]
execute as @e[tag=necroSummon,team=GrayTeam,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!GrayTeam]
execute as @e[tag=necroSummon,team=GreenTeam,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!GreenTeam]
execute as @e[tag=necroSummon,team=PurpleTeam,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!PurpleTeam]
execute as @e[tag=necroSummon,team=RedTeam,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!RedTeam]
execute as @e[tag=necroSummon,team=YellowTeam,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!YellowTeam]
execute as @e[tag=necroSummon,team=necromancer,scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!AquaTeam,distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!necromancer]

execute as @e[tag=necroSummon,scores={necroDamage=5..}] run scoreboard players reset @s necroDamage

execute as @e[tag=necroSummon] run scoreboard players add @s necroTimer 1
execute as @e[tag=necroSummon,scores={necroTimer=120..}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0 25
execute as @e[tag=necroSummon,scores={necroTimer=120..}] at @s run tp @s ~ ~250 ~
execute as @e[tag=necroSummon,scores={necroTimer=120..}] run kill @s

execute as @a[team=necromancer] run scoreboard players add @s necroTimer 1
execute as @a[team=necromancer,scores={necroTimer=120..}] run function trimabilities:clearnecro



execute as @a if score @s vexDamage matches 60.. run scoreboard players set @s vexDamage 60
execute as @a if score @s vexDamage matches 1.. run scoreboard players remove @s vexDamage 1
execute as @a if score @s vex matches 4 if score @s vexDamage matches 1.. run title @s actionbar ["",{"text":"Air Walker throttled. Please wait ","color":"red"},{"score":{"name":"@s","objective":"vexDamage"},"color":"red"},{"text":" seconds.","color":"red"}]
execute as @a if score @s vex matches 4 if score @s vexDamage matches 1 run title @s actionbar {"text":"Air Walker re-enabled.","color":"green"}


schedule function trimabilities:abilities20t 20t replace
