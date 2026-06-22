#first chain
execute as @a[scores={sonicAttack=1}] at @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["warden"],Invisible:1b,NoGravity:1b,Marker:1b,NoAi:1}
execute at @a[scores={sonicAttack=1..}] as @e[type=minecraft:armor_stand,tag=warden,sort=nearest,limit=1] run scoreboard players set @s sonicTimer 5
execute as @a[scores={sonicAttack=1}] at @s if entity @s[x_rotation=60..90] run effect give @s minecraft:levitation 1 30 true
execute at @a[scores={sonicAttack=1}] run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 10
execute at @e[tag=warden,limit=1,sort=nearest] run tp @e[tag=warden,limit=1,sort=nearest] ~ ~0.02 ~ facing entity @p[limit=1,scores={sonicAttack=1..}]
execute as @a[scores={sonicAttack=1..}] run tag @s add wardenImmunity
execute as @a[scores={sonicAttack=1..}] run scoreboard players reset @s sonicAttack
execute at @e[tag=warden] run tp @e[tag=warden,limit=1,sort=nearest] ^ ^ ^-1.5
execute as @e[type=minecraft:armor_stand,tag=warden,scores={sonicTimer=1..}] run scoreboard players remove @s sonicTimer 1
execute if entity @e[type=minecraft:armor_stand,tag=warden,scores={sonicTimer=..0}] run effect clear @a[tag=wardenImmunity] minecraft:levitation
execute if entity @e[type=minecraft:armor_stand,tag=warden,scores={sonicTimer=..0}] run tag @a[tag=wardenImmunity] remove wardenImmunity
execute as @e[type=minecraft:armor_stand,tag=warden,scores={sonicTimer=..0}] run kill @s

#second chain
execute at @e[type=minecraft:armor_stand,tag=warden] run particle minecraft:sonic_boom ~ ~1.5 ~
execute at @e[type=minecraft:armor_stand,tag=warden] as @e[distance=0..4,type=player] run damage @s 15 magic
execute at @e[type=minecraft:armor_stand,tag=warden] as @e[distance=0..4,type=!player] run damage @s 25 magic
