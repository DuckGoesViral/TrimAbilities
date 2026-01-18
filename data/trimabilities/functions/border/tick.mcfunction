

function trimabilities:border/getborder
function trimabilities:border/wilds with storage trimabilities:border wild

execute as @a[tag=inWilds] run scoreboard players add @s wildsTimer 1

execute as @a[tag=inWilds] store result score @s wildsLevels run xp query @s levels
execute as @a[tag=inWilds,scores={wildsLevels=0,wildsTimer=2400..}] at @s run function trimabilities:border/bail

execute as @a[tag=falling] at @s run function trimabilities:border/tp


execute as @a[tag=inWilds,scores={wildsTimer=2400..}] run xp add @s -1 levels
execute as @a[tag=inWilds,scores={wildsTimer=2400..}] at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 5 1 1
execute as @a[tag=inWilds,scores={wildsTimer=2400..}] at @s as @e[distance=..75,type=!minecraft:player,type=!item,type=!minecraft:chest_minecart,type=!marker,type=!minecraft:armor_stand] at @s run spreadplayers ~ ~ 1 1 false @s
execute as @a[tag=inWilds,scores={wildsTimer=2400..}] run scoreboard players reset @s wildsTimer


execute as @a[tag=!inWilds] run scoreboard players reset @s wildsTimer

execute store result score effects wildsRandom run random value 1..3
execute as @a[tag=inWilds] at @s if score effects wildsRandom matches 1 run tag @e[type=!player,distance=..20,tag=,limit=1] add wildsSpeed
execute as @a[tag=inWilds] at @s if score effects wildsRandom matches 2 run tag @e[type=!player,distance=..20,tag=,limit=1] add wildsStrength
execute as @a[tag=inWilds] at @s if score effects wildsRandom matches 3 run tag @e[type=!player,distance=..20,tag=,limit=1] add wildsResistance

execute as @a[tag=inWilds] at @s run effect give @e[tag=wildsSpeed,distance=..50] speed 60 1 false
execute as @a[tag=inWilds] at @s run effect give @e[tag=wildsStrength,distance=..50] strength 60 1 false
execute as @a[tag=inWilds] at @s run effect give @e[tag=wildsResistance,distance=..50] resistance 60 1 false

execute as @a[tag=inWilds] at @s run item replace entity @e[tag=wildsSpeed,distance=..50] armor.head with leather_helmet
execute as @a[tag=inWilds] at @s run item replace entity @e[tag=wildsStrength,distance=..50] armor.head with chainmail_helmet
execute as @a[tag=inWilds] at @s run item replace entity @e[tag=wildsResistance,distance=..50] armor.head with iron_helmet

execute as @a[tag=inWilds] at @s run kill @e[type=experience_orb,distance=..10]
execute as @a[tag=inWilds] at @s run kill @e[type=experience_bottle,distance=..10]


execute as @a[tag=inWilds] run scoreboard players add @s wildsETimer 1



