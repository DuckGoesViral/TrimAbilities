
execute unless score @s trimEssence matches 1.. run return run tellraw @s ["",{"text":"You have no trim essence. You have ","color":"red"},{"score":{"name":"@s","objective":"insuranceBudget"},"color":"dark_purple"},{"text":" in your insurance budget.","color":"red"}]

scoreboard players add @s insuranceBudget 1
scoreboard players remove @s trimEssence 1


execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

tellraw @s ["",{"text":"You have allocated ","color":"red"},{"score":{"name":"@s","objective":"insuranceBudget"},"color":"red"},{"text":" to your trim insurance!","color":"red"}]
tellraw @s ["",{"text":"You now have ","color":"dark_purple"},{"score":{"name":"@s","objective":"trimEssence"},"color":"dark_purple"},{"text":" trim essence!","color":"dark_purple"}]


