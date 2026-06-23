
give @s spire_armor_trim_smithing_template

scoreboard players remove @s recoverySpire 1

tellraw @s {"text":"Spire armor trim collected!","color":"green"}

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

function trimabilities:shrine/collect
