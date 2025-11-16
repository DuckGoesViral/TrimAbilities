execute at @a[scores={shoot=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpo0
execute at @a[scores={shoot=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpo1
execute at @a[scores={shoot=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpo2
execute at @a[scores={shoot=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpo3
execute at @a[scores={shoot=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpo4
execute at @a[scores={shoot=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpo5

execute at @a[scores={shoot2=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpi0
execute at @a[scores={shoot2=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:1s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpi1
execute at @a[scores={shoot2=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:2s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpi2
execute at @a[scores={shoot2=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:3s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpi3
execute at @a[scores={shoot2=1..},tag=eye,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:4s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add eyearrowpi4

execute as @a[scores={shoot=1..}] run scoreboard players set @s shoot 0
execute as @a[scores={shoot2=1..}] run scoreboard players set @s shoot2 0


execute as @e[type=arrow,tag=eyearrowpo0] run data merge entity @s {damage:4d,PierceLevel:3b}
execute as @e[type=arrow,tag=eyearrowpo1] run data merge entity @s {damage:5d,PierceLevel:3b}
execute as @e[type=arrow,tag=eyearrowpo2] run data merge entity @s {damage:5.5d,PierceLevel:3b}
execute as @e[type=arrow,tag=eyearrowpo3] run data merge entity @s {damage:6d,PierceLevel:3b}
execute as @e[type=arrow,tag=eyearrowpo4] run data merge entity @s {damage:6.5d,PierceLevel:3b}
execute as @e[type=arrow,tag=eyearrowpo5] run data merge entity @s {damage:7d,PierceLevel:3b}

execute as @e[type=arrow,tag=eyearrowpi0] run data merge entity @s {damage:4d,PierceLevel:3b}
execute as @e[type=arrow,tag=eyearrowpi1] run data merge entity @s {damage:4d,PierceLevel:4b}
execute as @e[type=arrow,tag=eyearrowpi2] run data merge entity @s {damage:4d,PierceLevel:5b}
execute as @e[type=arrow,tag=eyearrowpi3] run data merge entity @s {damage:4d,PierceLevel:6b}
execute as @e[type=arrow,tag=eyearrowpi4] run data merge entity @s {damage:4d,PierceLevel:7b}

