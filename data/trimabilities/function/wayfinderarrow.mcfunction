execute at @a[scores={shoot=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpo0
execute at @a[scores={shoot=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpo1
execute at @a[scores={shoot=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpo2
execute at @a[scores={shoot=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpo3
execute at @a[scores={shoot=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpo4
execute at @a[scores={shoot=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpo5

execute at @a[scores={shoot2=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpi0
execute at @a[scores={shoot2=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:1s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpi1
execute at @a[scores={shoot2=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:2s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpi2
execute at @a[scores={shoot2=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:3s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpi3
execute at @a[scores={shoot2=1..},tag=wayfinder,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:4s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wayfinderarrowpi4

execute as @a[scores={shoot=1..}] run scoreboard players set @s shoot 0
execute as @a[scores={shoot2=1..}] run scoreboard players set @s shoot2 0


execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpo0] run data merge entity @s {damage:2.5d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpo1] run data merge entity @s {damage:3.5d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpo2] run data merge entity @s {damage:4d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpo3] run data merge entity @s {damage:4.5d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpo4] run data merge entity @s {damage:5d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpo5] run data merge entity @s {damage:5.5d,PierceLevel:1b}

execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpi0] run data merge entity @s {damage:2.5d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpi1] run data merge entity @s {damage:2.5d,PierceLevel:2b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpi2] run data merge entity @s {damage:2.5d,PierceLevel:3b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpi3] run data merge entity @s {damage:2.5d,PierceLevel:4b}
execute if score @s wayfinderDamage matches 5 as @e[type=arrow,tag=wayfinderarrowpi4] run data merge entity @s {damage:2.5d,PierceLevel:5b}


execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpo0] run data merge entity @s {damage:2.3d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpo1] run data merge entity @s {damage:3.3d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpo2] run data merge entity @s {damage:3.8d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpo3] run data merge entity @s {damage:4.3d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpo4] run data merge entity @s {damage:4.8d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpo5] run data merge entity @s {damage:5.3d,PierceLevel:1b}

execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpi0] run data merge entity @s {damage:2.3d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpi1] run data merge entity @s {damage:2.3d,PierceLevel:2b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpi2] run data merge entity @s {damage:2.3d,PierceLevel:3b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpi3] run data merge entity @s {damage:2.3d,PierceLevel:4b}
execute if score @s wayfinderDamage matches 3 as @e[type=arrow,tag=wayfinderarrowpi4] run data merge entity @s {damage:2.3d,PierceLevel:5b}


execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpo0] run data merge entity @s {damage:2.2d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpo1] run data merge entity @s {damage:3.2d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpo2] run data merge entity @s {damage:3.7d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpo3] run data merge entity @s {damage:4.2d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpo4] run data merge entity @s {damage:4.7d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpo5] run data merge entity @s {damage:5.2d,PierceLevel:1b}

execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpi0] run data merge entity @s {damage:2.2d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpi1] run data merge entity @s {damage:2.2d,PierceLevel:2b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpi2] run data merge entity @s {damage:2.2d,PierceLevel:3b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpi3] run data merge entity @s {damage:2.2d,PierceLevel:4b}
execute if score @s wayfinderDamage matches 2 as @e[type=arrow,tag=wayfinderarrowpi4] run data merge entity @s {damage:2.2d,PierceLevel:5b}


execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpo0] run data merge entity @s {damage:2.1d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpo1] run data merge entity @s {damage:3.1d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpo2] run data merge entity @s {damage:3.6d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpo3] run data merge entity @s {damage:4.1d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpo4] run data merge entity @s {damage:4.6d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpo5] run data merge entity @s {damage:5.1d,PierceLevel:1b}

execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpi0] run data merge entity @s {damage:2.1d,PierceLevel:1b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpi1] run data merge entity @s {damage:2.1d,PierceLevel:2b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpi2] run data merge entity @s {damage:2.1d,PierceLevel:3b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpi3] run data merge entity @s {damage:2.1d,PierceLevel:4b}
execute if score @s wayfinderDamage matches 1 as @e[type=arrow,tag=wayfinderarrowpi4] run data merge entity @s {damage:2.1d,PierceLevel:5b}