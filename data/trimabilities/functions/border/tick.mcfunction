

function trimabilities:border/getborder
function trimabilities:border/wilds with storage trimabilities:border wild

execute as @a[tag=inWilds] run scoreboard players add @s wildsTimer 1

execute as @a[tag=inWilds] store result score @s wildsLevels run xp query @s levels
execute as @a[tag=inWilds,scores={wildsLevels=0,wildsTimer=1200..}] at @s run function trimabilities:border/bail

execute as @a[tag=falling] at @s run function trimabilities:border/tp


execute as @a[tag=inWilds,scores={wildsTimer=1200..}] run xp add @s -1 levels
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 5 1 1
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] at @s run spreadplayers ~ ~ 1 10 false @e[distance=..75,type=!minecraft:player,type=!item,type=!minecraft:chest_minecart,type=!marker,type=!minecraft:armor_stand]
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] run scoreboard players reset @s wildsTimer


execute as @a[tag=!inWilds] run scoreboard players reset @s wildsTimer


execute at @a[tag=inWilds] if entity @e[type=!player,type=!experience_orb,type=!item,distance=..25,tag=,limit=1] as @e[type=!player,type=!experience_orb,type=!item,distance=..25,tag=,limit=1] run function trimabilities:border/buff

execute at @a[tag=!inWilds] if entity @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] as @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] run tag @s add notWildMob

execute as @a[tag=inWilds] at @s run kill @e[type=experience_orb,distance=..8]
execute as @a[tag=inWilds] at @s run kill @e[type=experience_bottle,distance=..8]
execute as @a[tag=inWilds] at @s run kill @e[type=minecraft:area_effect_cloud,distance=..25]


#execute as @a[tag=inWilds] run scoreboard players add @s wildsETimer 1

scoreboard objectives add netherBorder dummy
execute as @a at @s if dimension minecraft:the_nether if entity @s[x=-1000,z=-1000,dx=2000,dz=2000] run scoreboard players set @s netherBorder 0
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1000,z=-1000,dx=2000,dz=2000] run scoreboard players add @s netherBorder 1
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1000,z=-1000,dx=2000,dz=2000] run tellraw @s {"text": "PLEASE RETURN TO THE NETEHR (YOU WILL DIE IN ONE MINUTE)","color": "red","bold": true}
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1000,z=-1000,dx=2000,dz=2000] run title @s title {"text": "RETURN TO THE NETHER","color": "red","bold": true}
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1000,z=-1000,dx=2000,dz=2000] if score @s netherBorder matches 1200.. run damage @s 1 in_wall

