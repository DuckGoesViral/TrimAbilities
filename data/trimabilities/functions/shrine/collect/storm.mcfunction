
give @s minecraft:command_block{CustomModelData:1,TrimPattern:"trimabilities:storm",display:{Name:'{"text":"Smithing Template","color":"white","italic":false}',Lore:['{"text":"Ingredients","color":"blue","italic":false}','{"text":"Storm Armor Trim","color":"gray","italic":false}','{"text":" "}','{"text":"Applies to:","color":"gray","italic":false}','{"text":" Armor","color":"blue","italic":false}','{"text":"Ingredients","color":"gray","italic":false}','{"text":" Ingots & Crystals","color":"blue","italic":false}']}}

scoreboard players remove @s recoveryStorm 1

tellraw @s {"text":"Storm armor trim collected!","color":"green"}

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

function trimabilities:shrine/collect
