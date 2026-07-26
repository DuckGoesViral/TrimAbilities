

execute store success score @s hasEssence run clear @s debug_stick 1
execute if score @s hasEssence matches 1 run scoreboard players add @s trimEssence 1

execute unless score @s hasEssence matches 1 run return run tellraw @s {"text":"You do not have any trim essence in your inventory!","color":"red"}

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

tellraw @s {"text":"Deposited One Trim Essence!","color":"green"}
tellraw @s ["",{"text":"You now have ","color":"dark_purple"},{"score":{"name":"@s","objective":"trimEssence"},"color":"dark_purple"},{"text":" trim essence!","color":"dark_purple"}]



