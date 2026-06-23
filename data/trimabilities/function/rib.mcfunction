
execute unless score @s rib = @s ribOld run effect clear @s haste


execute if score @s rib matches 0 run tag @s remove rib

execute if score @s rib matches 1.. run effect give @s haste infinite 1 true
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run effect clear @s haste

execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run effect clear @s haste
execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run effect clear @s haste

execute if score @s rib matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run effect clear @s haste

scoreboard players operation @s ribOld = @s rib

#execute if score @s rib matches 4 if entity @s[tag=!unlockedRib] at @s run function trimabilities:unlocked/rib

execute if score @s rib matches 4 if score @s sneakTrigger matches 2.. run function trimabilities:rib_nuker

execute unless score @s cooldownRib matches 12.. run scoreboard players add @s cooldownRib 1


