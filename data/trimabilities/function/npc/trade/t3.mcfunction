

execute store success score @s trimCheck run clear @s eye_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

execute store success score @s trimCheck run clear @s snout_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

execute store success score @s trimCheck run clear @s ward_armor_trim_smithing_template 1
execute if score @s trimCheck matches 1 run return 1

#echo
execute store success score @s trimCheck run clear @s jigsaw 1
execute if score @s trimCheck matches 1 run return 1



execute unless score @s trimCheck matches 1 run return fail


