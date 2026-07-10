give @s minecraft:command_block[custom_name=[{"text":"Smithing Template","italic":false,"color":"white"}],lore=[[{"text":"Ingredients","italic":false,"color":"blue"}],[{"text":"Storm Armor Trim","italic":false,"color":"gray"}],[{"text":" ","italic":false}],[{"text":"Applies to:","italic":false,"color":"gray"}],[{"text":" Armor","italic":false,"color":"blue"}],[{"text":"Ingredients","italic":false,"color":"gray"}],[{"text":" Ingots & Crystals","italic":false,"color":"blue"}]],item_model="trimabilities:storm"]

scoreboard players remove @s recoveryStorm 1

tellraw @s {"text":"Storm armor trim collected!","color":"green"}

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

function trimabilities:shrine/collect
