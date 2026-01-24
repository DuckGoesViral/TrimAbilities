


execute as @e[type=minecraft:item_display,tag=healPool] at @s run effect give @e[distance=..2.5] regeneration 3 1 true




#necromancy stuf

execute as @e[tag=necroSummon] run scoreboard players add @s necroDamage 1

execute as @e[tag=necroSummon,team=AquaTeam,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!AquaTeam]
execute as @e[tag=necroSummon,team=BlueTeam,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!BlueTeam]
execute as @e[tag=necroSummon,team=GoldTeam,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!GoldTeam]
execute as @e[tag=necroSummon,team=GrayTeam,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!GrayTeam]
execute as @e[tag=necroSummon,team=GreenTeam,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!GreenTeam]
execute as @e[tag=necroSummon,team=PurpleTeam,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!PurpleTeam]
execute as @e[tag=necroSummon,team=RedTeam,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!RedTeam]
execute as @e[tag=necroSummon,team=YellowTeam,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!YellowTeam]
execute as @e[tag=necroSummon,team=necromancer,scores={necroDamage=5..}] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!necromancer]

execute as @e[tag=necroSummon,scores={necroDamage=5..}] run scoreboard players reset @s necroDamage

execute as @e[tag=necroSummon] run scoreboard players add @s necroTimer 1
execute as @e[tag=necroSummon,scores={necroTimer=60..}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0 25
execute as @e[tag=necroSummon,scores={necroTimer=60..}] at @s run tp @s ~ ~250 ~
execute as @e[tag=necroSummon,scores={necroTimer=60..}] run kill @s

execute as @a[team=necromancer] run scoreboard players add @s necroTimer 1
execute as @a[team=necromancer,scores={necroTimer=60..}] run function trimabilities:clearnecro





schedule function trimabilities:abilities20t 20t replace
