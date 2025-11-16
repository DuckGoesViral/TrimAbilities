execute at @a[scores={shoot=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpo0
execute at @a[scores={shoot=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpo1
execute at @a[scores={shoot=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpo2
execute at @a[scores={shoot=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpo3
execute at @a[scores={shoot=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpo4
execute at @a[scores={shoot=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpo5

execute at @a[scores={shoot2=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpi0
execute at @a[scores={shoot2=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:1s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpi1
execute at @a[scores={shoot2=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:2s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpi2
execute at @a[scores={shoot2=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:3s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpi3
execute at @a[scores={shoot2=1..},tag=wild,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:4s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add wildarrowpi4

execute as @a[scores={shoot=1..}] run scoreboard players set @s shoot 0
execute as @a[scores={shoot2=1..}] run scoreboard players set @s shoot2 0


execute as @e[type=arrow,tag=wildarrowpo0] run data merge entity @s {damage:3.5d,PierceLevel:2b}
execute as @e[type=arrow,tag=wildarrowpo1] run data merge entity @s {damage:4.5d,PierceLevel:2b}
execute as @e[type=arrow,tag=wildarrowpo2] run data merge entity @s {damage:5d,PierceLevel:2b}
execute as @e[type=arrow,tag=wildarrowpo3] run data merge entity @s {damage:5.5d,PierceLevel:2b}
execute as @e[type=arrow,tag=wildarrowpo4] run data merge entity @s {damage:6d,PierceLevel:2b}
execute as @e[type=arrow,tag=wildarrowpo5] run data merge entity @s {damage:6.5d,PierceLevel:2b}

execute as @e[type=arrow,tag=wildarrowpi0] run data merge entity @s {damage:3.5d,PierceLevel:2b}
execute as @e[type=arrow,tag=wildarrowpi1] run data merge entity @s {damage:3.5d,PierceLevel:3b}
execute as @e[type=arrow,tag=wildarrowpi2] run data merge entity @s {damage:3.5d,PierceLevel:4b}
execute as @e[type=arrow,tag=wildarrowpi3] run data merge entity @s {damage:3.5d,PierceLevel:5b}
execute as @e[type=arrow,tag=wildarrowpi4] run data merge entity @s {damage:3.5d,PierceLevel:6b}

