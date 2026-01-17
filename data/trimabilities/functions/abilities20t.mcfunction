


execute as @e[type=minecraft:item_display,tag=healPool] at @s run effect give @e[distance=..2.5] regeneration 3 1 true




#level lock out system
execute as @a run function trimabilities:levels








schedule function trimabilities:abilities20t 20t replace
