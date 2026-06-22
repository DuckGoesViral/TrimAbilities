
give @s sentry_armor_trim_smithing_template

scoreboard players remove @s recoverySentry 1

tellraw @s {"text":"Sentry armor trim collected!","color":"green"}

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

function trimabilities:shrine/collect
