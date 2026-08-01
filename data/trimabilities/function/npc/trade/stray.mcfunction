

execute unless score @s trimEssence matches 4.. run return run tellraw @s ["",{"text":"<"},{"text":"Retired Adventurer","color":"light_purple"},{"text":"> You do not have enough trim essence for this transaction! If you have it in your inventory, try depositing it into the Trim Shrine."}]

execute unless function trimabilities:npc/trade/t2 run return run tellraw @s ["",{"text":"<"},{"text":"Retired Adventurer","color":"light_purple"},{"text":"> You do not have any compatible trims in your inventory!"}]

scoreboard players remove @s trimEssence 4

give @s minecraft:repeating_command_block[custom_name=[{"text":"Smithing Template","italic":false,"color":"white"}],lore=[[{"text":"Ingredients","italic":false,"color":"blue"}],[{"text":"Stray Armor Trim","italic":false,"color":"gray"}],[{"text":" ","italic":false}],[{"text":"Applies to:","italic":false,"color":"gray"}],[{"text":" Armor","italic":false,"color":"blue"}],[{"text":"Ingredients","italic":false,"color":"gray"}],[{"text":" Ingots & Crystals","italic":false,"color":"blue"}]],item_model="trimabilities:stray"]

tellraw @s ["",{"text":"<"},{"text":"Retired Adventurer","color":"light_purple"},{"text":"> Pleasure doing business with you!"}]
