

execute unless score @s trimEssence matches 2.. run return run tellraw @s ["",{"text":"<"},{"text":"Retired Adventurer","color":"light_purple"},{"text":"> You do not have enough trim essence for this transaction! If you have it in your inventory, try depositing it into the Trim Shrine."}]

execute unless function trimabilities:npc/trade/t1 run return run tellraw @s ["",{"text":"<"},{"text":"Retired Adventurer","color":"light_purple"},{"text":"> You do not have any compatible trims in your inventory!"}]

scoreboard players remove @s trimEssence 2

give @s shaper_armor_trim_smithing_template 1

tellraw @s ["",{"text":"<"},{"text":"Retired Adventurer","color":"light_purple"},{"text":"> Pleasure doing business with you!"}]
