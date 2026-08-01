

execute store success score @s trimCheck run clear @s coast_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

execute store success score @s trimCheck run clear @s tide_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

#ravine
execute store success score @s trimCheck run clear @s structure_block 1
execute if score @s trimCheck matches 1 run return 1

#execute store success score @s trimCheck run clear @s rib_armor_trim_smithing_template 1
#execute if score @s trimCheck matches 1 run return 1

execute store success score @s trimCheck run clear @s bolt_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

execute store success score @s trimCheck run clear @s flow_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

execute store success score @s trimCheck run clear @s vex_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

#vital
execute store success score @s trimCheck run clear @s chain_command_block 1
execute if score @s trimCheck matches 1 run return 1

execute store success score @s trimCheck run clear @s dune_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

execute store success score @s trimCheck run clear @s wild_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

#stray
execute store success score @s trimCheck run clear @s repeating_command_block 1
execute if score @s trimCheck matches 1 run return 1



execute unless score @s trimCheck matches 1 run return fail


