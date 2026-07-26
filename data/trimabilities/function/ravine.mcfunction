execute unless score @s ravine = @s ravineOld run effect clear @s haste


execute if score @s ravine matches 0 run tag @s remove ravine

execute if score @s ravine matches 1.. run effect give @s haste infinite 0 true
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run effect clear @s haste

execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run effect clear @s haste
execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run effect clear @s haste

execute if score @s ravine matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run effect clear @s haste

execute if score @s ravine matches 4 if entity @s[tag=!unlockedRavine] at @s run function trimabilities:unlocked/ravine
execute if score @s ravine matches 4 run item modify entity @s weapon.mainhand trimabilities:unbreakable


scoreboard players operation @s ravineOld = @s ravine



