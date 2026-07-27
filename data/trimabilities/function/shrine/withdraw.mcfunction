
execute unless score @s trimEssence matches 1.. run return run tellraw @s {"text":"You have no trim essence!","color":"red"}

give @s debug_stick[item_model="trimabilities:trim_essence",max_stack_size=16,item_name={text:"Trim Essence",color:dark_purple}] 1

scoreboard players remove @s trimEssence 1

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

tellraw @s {"text":"Withdrew One Trim Essence!","color":"red"}
tellraw @s ["",{"text":"You now have ","color":"dark_purple"},{"score":{"name":"@s","objective":"trimEssence"},"color":"dark_purple"},{"text":" trim essence!","color":"dark_purple"}]

