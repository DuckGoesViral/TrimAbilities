
give @s raiser_armor_trim_smithing_template

scoreboard players remove @s recoveryRaiser 1

tellraw @s {"text":"Raiser armor trim collected!","color":"green"}

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

function trimabilities:shrine/collect
