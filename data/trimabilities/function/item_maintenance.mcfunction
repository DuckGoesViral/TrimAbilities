# Item maintenance — called every 5 ticks from tick.mcfunction.
# These are cosmetic / cleanup item scans that do not need per-tick precision,
# so running them at 5t cuts ~11 item-NBT reads per player per tick by 80%.
# Logic is unchanged from the original per-tick version.

# Power-warning labels on the held bow
#execute as @a[nbt={SelectedItem:{tag:{added_power:0}}}] run item modify entity @s weapon.mainhand trimabilities:warn_clear
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:0b}}}}] run item modify entity @s weapon.mainhand trimabilities:warn_clear
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:1b}}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:2b}}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:3b}}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:4b}}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power

# Strip the unbreakable component from gear unless the player is Ravine level 4
execute as @a[nbt={SelectedItem:{components:{"minecraft:unbreakable":{}}}}] unless score @s ravine matches 4 run item modify entity @s weapon.mainhand trimabilities:ununbreakable
execute as @a[nbt={equipment:{offhand:{components:{"minecraft:unbreakable":{}}}}}] unless score @s ravine matches 4 run item modify entity @s weapon.offhand trimabilities:ununbreakable
execute as @a[nbt={equipment:{feet:{components:{"minecraft:unbreakable":{}}}}}] unless score @s ravine matches 4 run item modify entity @s armor.feet trimabilities:ununbreakable
execute as @a[nbt={equipment:{legs:{components:{"minecraft:unbreakable":{}}}}}] unless score @s ravine matches 4 run item modify entity @s armor.legs trimabilities:ununbreakable
execute as @a[nbt={equipment:{chest:{components:{"minecraft:unbreakable":{}}}}}] unless score @s ravine matches 4 run item modify entity @s armor.chest trimabilities:ununbreakable
execute as @a[nbt={equipment:{head:{components:{"minecraft:unbreakable":{}}}}}] unless score @s ravine matches 4 run item modify entity @s armor.head trimabilities:ununbreakable
