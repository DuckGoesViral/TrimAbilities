#abilities
function trimabilities:abilities1t






#note on attribute modifier uuids
#first digit is class (1-5, 5 being miscellaneous)
#second is trim (1-4 for classes, 1-5 for misc)
#third is whether it is a sub effect or full effect (0-1)
#fourth is sub level (1-4) 
#fifth is attribute type (1, 2, or 3 for health, speed, or damage)
# ex: 1-1-0-1-3




execute as @a[predicate=trimabilities:is_sneaking,tag=!isSneaking] run scoreboard players add @s sneakTrigger 1
execute as @a[predicate=trimabilities:is_sneaking,scores={sneakTrigger=1..}] run tag @s add isSneaking

execute as @a[predicate=trimabilities:not_sneaking] run tag @s remove isSneaking


execute as @a[predicate=trimabilities:not_sneaking,scores={sneakTimer=..4}] run scoreboard players add @s sneakTimer 1
execute as @a[predicate=trimabilities:is_sneaking] run scoreboard players set @s sneakTimer 0
execute as @a[predicate=trimabilities:not_sneaking,scores={sneakTimer=5..}] run scoreboard players set @s sneakTrigger 0




#clear @a[tag=!banTest] elytra
#clear @a[tag=!banTest] potion
#clear @a[tag=!banTest] splash_potion
#clear @a[tag=!banTest] totem_of_undying




execute as @a[scores={recoveryDeath=1..}] run function trimabilities:recovery/trimrecovery



execute if score placed trimShrine matches 1 run function trimabilities:shrine/display




# ARCHER POWER STUFF




scoreboard players add Timer subPower 1
execute if score Timer subPower matches 20.. as @a[nbt={SelectedItem:{id:"minecraft:bow"}}] run function trimabilities:subarrow_pre
execute if score Timer subPower matches 20.. run scoreboard players reset Timer subPower

execute as @a[nbt={SelectedItem:{tag:{added_power:0}}}] run item modify entity @s weapon.mainhand trimabilities:warn_clear
execute as @a[nbt={SelectedItem:{tag:{added_power:1}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{tag:{added_power:2}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{tag:{added_power:3}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{tag:{added_power:4}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power

execute as @a[nbt={SelectedItem:{tag:{Unbreakable:1b}}},tag=!ravine] run item modify entity @s weapon.mainhand trimabilities:ununbreakable

execute as @a[scores={grindstoneUse=1..}] run function trimabilities:subarrow_clear
execute as @a[scores={grindstoneUse=1..}] run scoreboard players reset @s grindstoneUse

#kill
#give @s minecraft:stone_sword 1
#clear @s minecraft:stone_sword 0
#effect give @s minecraft:strength 10 0 true
#effect clear @s minecraft:strength
#attribute @s generic.attack_damage base set 6
#random value 1..10
#damage @s 5 fireball
#tp @e[type=zombie] ~ ~ ~ facing entity @p
#summon zombie ~ ~ ~
#tellraw @a {"text":"Hello, World!","color":"gold","bold":true}
#title @a title {"text":"Welcome to the Game!","color":"green","bold":true}
#setblock
#fill 
#tag




