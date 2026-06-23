

execute if score @s raiserOld matches 4 run scoreboard players remove @s manaMax 50
execute if score @s raiserOld matches 3 run scoreboard players remove @s manaMax 45
execute if score @s raiserOld matches 2 run scoreboard players remove @s manaMax 30
execute if score @s raiserOld matches 1 run scoreboard players remove @s manaMax 15

execute if score @s raiser matches 0 run tag @s remove raiser

execute if score @s raiser matches 1 run scoreboard players add @s manaMax 15
execute if score @s raiser matches 2 run scoreboard players add @s manaMax 30
execute if score @s raiser matches 3 run scoreboard players add @s manaMax 45

execute if score @s raiser matches 4 if entity @s[tag=!unlockedRaiser] at @s run function trimabilities:unlocked/raiser

execute if score @s raiser matches 4 run scoreboard players add @s manaMax 50

scoreboard players operation @s raiserOld = @s raiser



#execute as @a[scores={sneakTrigger=2..},tag=NRcooldownTimer,tag=raiser] run scoreboard players operation @s NRcooldownCurrent = @s NRcooldownMax
#execute as @a[scores={sneakTrigger=2..},tag=NRcooldownTimer,tag=raiser] run scoreboard players operation @s NRcooldownCurrent -= @s NRcooldownTimer2
#
#execute as @a[scores={sneakTrigger=2..},tag=NRcooldownTimer,tag=raiser] run tellraw @s ["",{"text":"This ability is not available yet. It will be #available in ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"NRcooldownCurrent"},"bold":true,"color":"yellow"},{"text":" second(s)",#"bold":true,"color":"red"}]
#execute as @a[scores={sneakTrigger=2..},tag=NRcooldownTimer,tag=raiser] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~

# Handle adding score to frankensteinScore when specific kills are done.
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinScore += @s frankensteinKills
execute as @a[tag=raiser] run scoreboard players set @s frankensteinKills 0


# NOTE: Since the scoreboards already add +1 score for everything, remove 1 score from any bonus souls added.

# Handle wither scoreboard (+10 for each kill)
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinWitherKills *= 9 constants
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinScore += @s frankensteinWitherKills
execute as @a[tag=raiser] run scoreboard players set @s frankensteinWitherKills 0

# Handle ender draon scoreboard (+25 for each kill)
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinDragonKills *= 24 constants
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinScore += @s frankensteinDragonKills
execute as @a[tag=raiser] run scoreboard players set @s frankensteinDragonKills 0

# Handle elder guardian scoreboard (+5 for each kill)
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinElderKills *= 4 constants
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinScore += @s frankensteinElderKills
execute as @a[tag=raiser] run scoreboard players set @s frankensteinElderKills 0

# Handle warden scoreboard (+5 for each kill)
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinWardenKills *= 4 constants
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinScore += @s frankensteinWardenKills
execute as @a[tag=raiser] run scoreboard players set @s frankensteinWardenKills 0

# Handle ravager scoreboard (+3 for each kill)
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinRavagerKills *= 2 constants
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinScore += @s frankensteinRavagerKills
execute as @a[tag=raiser] run scoreboard players set @s frankensteinRavagerKills 0

# Handle piglin brute scoreboard (+3 for each kill)
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinPiglinBruteKills *= 2 constants
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinScore += @s frankensteinPiglinBruteKills
execute as @a[tag=raiser] run scoreboard players set @s frankensteinPiglinBruteKills 0

# Handle witch scoreboard (+2 for each kill)
execute as @a[tag=raiser] run scoreboard players operation @s frankensteinScore += @s frankensteinWitchKills
execute as @a[tag=raiser] run scoreboard players set @s frankensteinWitchKills 0



#execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser] at @s if block ^ ^ ^1 air run tag @s add northSpawn
#execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser,tag=!northSpawn] at @s if block ^1 ^ ^ air run tag @s add #eastSpawn
#execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser,tag=!northSpawn,tag=!eastSpawn] at @s if block ^-1 ^ ^ air #run tag @s add westSpawn
#execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser,tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn] at @s if block #^ ^ ^-1 air run tag @s add southSpawn
#execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=!NRcooldownTimer,tag=raiser,tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn,tag=!southSpawn] #run tellraw @s {"text": "Could not find a location to summon","color": "red","bold": true}
# execute as @a[scores={sneakTrigger=2..},tag=!NRcooldownTimer,tag=raiser] run weather rain 20s


# execute as @a[tag=raiser] run scoreboard players add @s zombieNameRandom 1
# execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=1},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Steve\""}
# execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=2},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Steeve\""}
# execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=3},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Stevee\""}
# execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=4},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Steevee\""}
# execute as @e[type=zombie,tag=necroSummon] if entity @a[scores={sneakTrigger=2..,zombieNameRandom=5},tag=!NRcooldownTimer,tag=raiser] run data merge entity @s {CustomName:"\"Stevve\""}
# execute as @a[tag=raiser,scores={zombieNameRandom=5..}] run scoreboard players set @s zombieNameRandom 0


# execute as @e[type=zombie,tag=necroSummon] run effect give @s strength 120 0 true
# execute as @e[type=zombie,tag=necroSummon] run effect give @s resistance 120 0 true
# execute as @e[type=zombie,tag=necroSummon] run effect give @s speed 120 0 true
# execute as @e[type=zombie,tag=necroSummon] run effect give @s fire_resistance 120 0 true
# execute as @e[type=zombie,tag=necroSummon] run effect give @s glowing 120 0 true
# execute as @e[type=zombie,tag=necroSummon] run effect give @s health_boost 120 2 true
# execute as @e[type=zombie,tag=necroSummon] at @s run summon lightning_bolt ~ ~ ~
# execute as @e[type=zombie,tag=necroSummon] run tag @s remove necroSummon

# Zombie: 10 souls
# Skeleton: 20 souls
# Wither Skeleton: 40 souls
# Vex: 100 souls

#Handle summoning the zombie in front of the player if the block is open. 
# execute as @a[tag=raiser,tag=northSpawn,scores={sneakTrigger=2..,zombieSuccess=0}] at @s anchored eyes store success score @s zombieSuccess unless score @s frankensteinScore matches 25.. run summon minecraft:zombie ^ ^ ^1 {Tags:["necroSummon"],CustomNameVisible:0,IsBaby:0,Attributes:[{Name:"generic.movement_speed",Base:1.00},{Name:"generic.attack_damage",Base:3.0}]} 
# execute as @a[scores={sneakTrigger=2..,zombieSuccess=0},tag=raiser] at @s store success score @s zombieSuccess if block ~ ~ ~-1 air
# execute as @a[tag=raiser,tag=northSpawn,scores={sneakTrigger=2..,zombieSuccess=1}] run tag @s remove northSpawn
# execute as @e[tag=necroSummon] run team join necromancer @s

#effect give @e[type=!player,tag=necroSummon] instant_health 1 1 true

#execute as @a[scores={sneakTrigger=2..,zombieSuccess=1},tag=!NRcooldownTimer,tag=raiser] run scoreboard players set @s NRcooldownTimer 0
#execute as @a[scores={sneakTrigger=2..,zombieSuccess=1},tag=!NRcooldownTimer,tag=raiser] run scoreboard players set @s NRcooldownTimer2 0
#execute as @a[scores={sneakTrigger=2..,zombieSuccess=1},tag=!NRcooldownTimer,tag=raiser] run tag @s add NRcooldownTimer
#execute as @a[scores={sneakTrigger=2..,zombieSuccess=1},tag=raiser] run scoreboard players set @s zombieSuccess 0
#execute as @a[scores={sneakTrigger=2..}] run scoreboard players set @s sneakTrigger 0
#
#
#execute as @a[tag=NRcooldownTimer,scores={NRcooldownTimer=..19,NRcooldownTimer2=..59}] run scoreboard players add @s NRcooldownTimer 1
#execute as @a[tag=NRcooldownTimer,scores={NRcooldownTimer=20}] run scoreboard players add @s NRcooldownTimer2 1
#execute as @a[tag=NRcooldownTimer,scores={NRcooldownTimer=20}] run scoreboard players set @s NRcooldownTimer 0
#execute as @a[tag=NRcooldownTimer,scores={NRcooldownTimer2=60},tag=raiser] run tag @s remove NRcooldownTimer


