
give @s snout_armor_trim_smithing_template

scoreboard players remove @s recoverySnout 1

tellraw @s {"text":"Snout armor trim collected!","color":"green"}

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

function trimabilities:shrine/collect
