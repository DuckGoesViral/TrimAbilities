

execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:shaper_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 2
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:dune_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 4
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:snout_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 6

execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:host_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 2
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:chain_command_block"}]}] run scoreboard players add @s trimEssence 4
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:ward_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 6

execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:wayfinder_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 2
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:wild_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 4
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:eye_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 6

execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:raiser_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 2
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:repeating_command_block"}]}] run scoreboard players add @s trimEssence 4
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:jigsaw"}]}] run scoreboard players add @s trimEssence 6

execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:coast_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 1
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:tide_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 3
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:structure_block"}]}] run scoreboard players add @s trimEssence 3
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:rib_armor_trim_smithing_template"}]}] run return run tellraw @s {"text":"You cannot salvage Rib trims!","color":"red"}
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:bolt_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 4
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:flow_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 6
execute if entity @e[type=chest_minecart,tag=trimShrine,nbt={Items:[{Slot:13b,id:"minecraft:vex_armor_trim_smithing_template"}]}] run scoreboard players add @s trimEssence 4

item modify entity @e[type=minecraft:chest_minecart,tag=trimShrine,limit=1] container.13 trimabilities:remove_one

execute at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1

tellraw @s {"text":"Trim Salvaged!","color":"red"}
tellraw @s ["",{"text":"You now have ","color":"dark_purple"},{"score":{"name":"@s","objective":"trimEssence"},"color":"dark_purple"},{"text":" trim essence!","color":"dark_purple"}]
