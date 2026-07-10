
give @s minecraft:chain_command_block[custom_name=[{"text":"Smithing Template","italic":false,"color":"white"}],lore=[[{"text":"Ingredients","italic":false,"color":"blue"}],[{"text":"Vital Armor Trim","italic":false,"color":"gray"}],[{"text":" ","italic":false}],[{"text":"Applies to:","italic":false,"color":"gray"}],[{"text":" Armor","italic":false,"color":"blue"}],[{"text":"Ingredients","italic":false,"color":"gray"}],[{"text":" Ingots & Crystals","italic":false,"color":"blue"}]],item_model="trimabilities:vital"]

scoreboard players remove @s recoveryVital 1

tellraw @s {"text":"Vital armor trim collected!","color":"green"}

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

function trimabilities:shrine/collect
