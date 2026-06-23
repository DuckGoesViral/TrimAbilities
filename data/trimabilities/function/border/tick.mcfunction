# Retrieves the border location and checks if players are in the wilds.
function trimabilities:border/getborder
function trimabilities:border/wilds with storage trimabilities:border wild

# Increments a timer for each player in the wilds to track how long they've been there. Will run a level removal function every 60 seconds.
execute as @a[tag=inWilds] run scoreboard players add @s wildsTimer 1

# Stores the player's current XP levels in a scoreboard for the time calculation.
execute as @a[tag=inWilds,nbt={Dimension:"minecraft:overworld"}] store result score @s wildsLevels run xp query @s levels
execute as @a[tag=inWilds,scores={wildsLevels=0,wildsTimer=2400..}] at @s run function trimabilities:border/bail

# Remove 1 level from the player every 60 seconds in the wilds. Also, run a cave ambient sound and teleport nearby mobs to the player. This excludes any players, items, xp, etc. 
# Note that boats being teleported to the player is intended behavior, as players may be in boats to avoid the TP. 
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] unless score @s wildsLevels matches 0 run xp add @s -1 levels
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] at @s unless score @s wildsLevels matches 0 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 5 1 1
execute as @a[tag=inWilds,scores={wildsTimer=1200..}] unless score @s wildsLevels matches 0 run scoreboard players reset @s wildsTimer

# Resets the wilds timer for players not in the wilds
execute as @a[tag=!inWilds,nbt={Dimension:"minecraft:overworld"}] run scoreboard players reset @s wildsTimer


# Gives all mobs in the wilds a permanent buff. 
#execute at @a[tag=inWilds,nbt={Dimension:"minecraft:overworld"}] if entity @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] as @e[type=!player,type=!experience_orb,type=!item,distance=..25,tag=,limit=1] run function trimabilities:border/buff

# Gives all mobs outside the wilds a "notWildMob" tag to prevent them from being buffed in the wilds. 
#execute at @a[tag=!inWilds,nbt={Dimension:"minecraft:overworld"}] if entity @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] as @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] run tag @s add notWildMob

# Prevents XP orbs and bottles from existing in the wilds, as they can be exploited to gain infinite XP.
execute as @a[tag=inWilds,nbt={Dimension:"minecraft:overworld"}] at @s run kill @e[type=experience_orb,distance=..8]
execute as @a[tag=inWilds,nbt={Dimension:"minecraft:overworld"}] at @s run kill @e[type=experience_bottle,distance=..8]
execute as @a[tag=inWilds,nbt={Dimension:"minecraft:overworld"}] at @s run kill @e[type=minecraft:area_effect_cloud,distance=..15]

# Nether border enforcement
scoreboard objectives add netherBorder dummy
execute as @a at @s if dimension minecraft:the_nether if entity @s[x=-1500,z=-1500,dx=3000,dz=3000,scores={netherBorder=1..}] run tellraw @s ["",{"text":"--------------------------------------------------","color":"dark_green"},{"text":"\n"},{"text":"EXITING NETHER WILDS!!!","bold":true,"color":"green"},{"text":"\nYou are back to normal territory, what a relief!\n"},{"text":"--------------------------------------------------","color":"dark_green"},{"text":"\n "}]
execute as @a at @s if dimension minecraft:the_nether if entity @s[x=-1500,z=-1500,dx=3000,dz=3000] run scoreboard players set @s netherBorder 0
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 0 run tellraw @s ["",{"text":"--------------------------------------------------","color":"dark_red"},{"text":"\n"},{"text":"ENTERING NETHER WILDS!!!","bold":true,"color":"red"},{"text":"\nYou are entering "},{"text":"unmarked territory","bold":true},{"text":", The longer you stay\nhere the more "},{"text":"XP will be drained","bold":true},{"text":" from your bar. If you\never reach 0, you will be "},{"text":"sent to spawn","bold":true},{"text":". You cannot gain\nany XP while in the wilds so you cannot gain any time.\nGood luck.\n"},{"text":"HERE BE DRAGONS","italic":true,"color":"dark_purple"},{"text":"\n"},{"text":"--------------------------------------------------","color":"dark_red"},{"text":"\n "}]
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 0 run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 5 0 1

execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] run scoreboard players add @s netherBorder 1

execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 600.. store result score @s wildsLevels run xp query @s levels
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 600.. unless score @s wildsLevels matches 0 run xp add @s -1 levels
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 600.. at @s unless score @s wildsLevels matches 0 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 5 1 1
execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 600.. unless score @s wildsLevels matches 0 run scoreboard players reset @s netherBorder

execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 1200.. if score @s wildsLevels matches 0 run function trimabilities:border/netherbail








## Gives all mobs in the wilds a permanent buff. 
#execute at @a[tag=inWilds] if entity @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] as @e[type=!player,type=!experience_orb,type=!item,distance=..25,tag=,limit=1] run function trimabilities:border/buff
#
## Gives all mobs outside the wilds a "notWildMob" tag to prevent them from being buffed in the wilds. 
#execute at @a[tag=!inWilds] if entity @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] as @e[type=!player,type=!experience_orb,type=!item,distance=..20,tag=,limit=1] run tag @s add notWildMob
##execute as @a at @s if dimension minecraft:the_nether if entity @s[x=-1500,z=-1500,dx=3000,dz=3000] unless score @s netherBorder matches 0.. run scoreboard players set @s netherBorder 0
##execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] run scoreboard players add @s netherBorder 1
##execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] run tellraw @s {"text": "PLEASE RETURN TO THE NETHER! (YOU WILL START DYING IN 10 SECONDS)","color": "red","bold": true}
##execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] run title @s title {"text": "RETURN TO THE NETHER!","color": "red","bold": true}
##execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 1.. run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 1 0.5 1
##execute as @a at @s if dimension minecraft:the_nether unless entity @s[x=-1500,z=-1500,dx=3000,dz=3000] if score @s netherBorder matches 200.. run damage @s 1 in_wall

# Remove 1 level and reset wilds timer if a player goes to the nether.
execute as @a[tag=inWilds,nbt={Dimension:"minecraft:the_nether"}] run xp add @s -1 levels
execute as @a[tag=inWilds,nbt={Dimension:"minecraft:the_nether"}] run scoreboard players reset @s wildsTimer
execute as @a[tag=inWilds,nbt={Dimension:"minecraft:the_nether"}] run tag @s remove inWilds
