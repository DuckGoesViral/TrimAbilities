execute at @a[scores={shoot=1..,sentryBoom=1},tag=sentry,nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add arrow
execute at @a[scores={shoot=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpo0
execute at @a[scores={shoot=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpo1
execute at @a[scores={shoot=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpo2
execute at @a[scores={shoot=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpo3
execute at @a[scores={shoot=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpo4
execute at @a[scores={shoot=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpo5

execute at @a[scores={shoot2=1..,sentryBoom=1},tag=sentry,nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add arrow
execute at @a[scores={shoot2=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpi0
execute at @a[scores={shoot2=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:1s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpi1
execute at @a[scores={shoot2=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:2s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpi2
execute at @a[scores={shoot2=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:3s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpi3
execute at @a[scores={shoot2=1..},tag=sentry,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:piercing",lvl:4s}]}}}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add sentryarrowpi4

execute as @a[scores={shoot=1..}] run scoreboard players set @s shoot 0
execute as @a[scores={shoot2=1..}] run scoreboard players set @s shoot2 0


execute as @e[type=arrow,tag=sentryarrowpo0] run data merge entity @s {damage:4d,PierceLevel:4b}
execute as @e[type=arrow,tag=sentryarrowpo1] run data merge entity @s {damage:5d,PierceLevel:4b}
execute as @e[type=arrow,tag=sentryarrowpo2] run data merge entity @s {damage:5.5d,PierceLevel:4b}
execute as @e[type=arrow,tag=sentryarrowpo3] run data merge entity @s {damage:6d,PierceLevel:4b}
execute as @e[type=arrow,tag=sentryarrowpo4] run data merge entity @s {damage:6.5d,PierceLevel:4b}
execute as @e[type=arrow,tag=sentryarrowpo5] run data merge entity @s {damage:7d,PierceLevel:4b}

execute as @e[type=arrow,tag=sentryarrowpi0] run data merge entity @s {damage:4d,PierceLevel:4b}
execute as @e[type=arrow,tag=sentryarrowpi1] run data merge entity @s {damage:4d,PierceLevel:5b}
execute as @e[type=arrow,tag=sentryarrowpi2] run data merge entity @s {damage:4d,PierceLevel:6b}
execute as @e[type=arrow,tag=sentryarrowpi3] run data merge entity @s {damage:4d,PierceLevel:7b}
execute as @e[type=arrow,tag=sentryarrowpi4] run data merge entity @s {damage:4d,PierceLevel:8b}

