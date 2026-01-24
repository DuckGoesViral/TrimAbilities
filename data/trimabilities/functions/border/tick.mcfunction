# Retrieves the border location and checks if players are in the wilds.
function trimabilities:border/getborder
function trimabilities:border/wilds with storage trimabilities:border wild

# Increments a timer for each player in the wilds to track how long they've been there. Will run a level removal function every 60 seconds.
execute as @a[tag=inWilds] run scoreboard players add @s wildsTimer 1

# Stores the player's current XP levels in a scoreboard for the time calculation.
execute as @a[tag=inWilds] store result score @s wildsLevels run xp query @s levels
execute as @a[tag=inWilds,scores={wildsLevels=0,wildsTimer=2400..}] at @s run function trimabilities:border/bail

# Makes sure the bail out function allows players to fall without taking damage. 
execute as @a[tag=falling] at @s run function trimabilities:border/tp

# Remove 1 level from the player every 60 seconds in the wilds. Also, run a cave ambient sound and teleport nearby mobs to the player. This excludes any players, items, xp, etc. 
# Note that boats being teleported to the player is intended behavior, as players may be in boats to avoid the TP. 
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] unless score @s wildsLevels matches 0 run xp add @s -1 levels
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] at @s unless score @s wildsLevels matches 0 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 5 1 1
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] at @s unless score @s wildsLevels matches 0 run spreadplayers ~ ~ 1 10 false @e[distance=..64,type=!minecraft:player,type=!item,type=!minecraft:chest_minecart,type=!marker,type=!minecraft:armor_stand,type=!minecraft:experience_bottle,type=!minecraft:experience_orb,type=!minecraft:arrow,type=!minecraft:ender_pearl,type=!minecraft:eye_of_ender]
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] unless score @s wildsLevels matches 0 run scoreboard players reset @s wildsTimer

# Resets the wilds timer for players not in the wilds
execute as @a[tag=!inWilds] run scoreboard players reset @s wildsTimer

# Gives all mobs in the wilds a permanent buff. 
execute at @a[tag=inWilds] if entity @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] as @e[type=!player,type=!experience_orb,type=!item,distance=..25,tag=,limit=1] run function trimabilities:border/buff

# Gives all mobs outside the wilds a "notWildMob" tag to prevent them from being buffed in the wilds. 
execute at @a[tag=!inWilds] if entity @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] as @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] run tag @s add notWildMob

# Prevents XP orbs and bottles from existing in the wilds, as they can be exploited to gain infinite XP.
execute as @a[tag=inWilds] at @s run kill @e[type=experience_orb,distance=..8]
execute as @a[tag=inWilds] at @s run kill @e[type=experience_bottle,distance=..8]
execute as @a[tag=inWilds] at @s run kill @e[type=minecraft:area_effect_cloud,distance=..15]



