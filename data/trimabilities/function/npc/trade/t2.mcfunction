

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


