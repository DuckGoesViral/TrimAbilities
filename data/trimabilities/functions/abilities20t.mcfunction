


execute as @e[type=minecraft:item_display,tag=healPool] at @s run effect give @e[distance=..2.5] regeneration 3 1 true




#level lock out system
execute as @a run function trimabilities:levels


#necromancy stuf
#execute as @e[tag=necroSummon] at @s run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,distance=..10,limit=1]

execute as @e[tag=necroSummon] run scoreboard players add @s necroTimer 1
execute as @e[tag=necroSummon,scores={necroTimer=60..}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0 25
execute as @e[tag=necroSummon,scores={necroTimer=60..}] at @s run tp @s ~ ~250 ~
execute as @e[tag=necroSummon,scores={necroTimer=60..}] run kill @s




schedule function trimabilities:abilities20t 20t replace
