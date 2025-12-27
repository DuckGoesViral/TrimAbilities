
# # Spawn the zombie in front of the player if that is the block available. 
# execute as @a[tag=raiser,tag=northSpawn,scores={sneakTrigger=2..,summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess unless score @s frankensteinScore matches ..9 run summon minecraft:zombie ^ ^ ^1 {Tags:["necroSummon"]}
# execute as @a[tag=raiser,tag=northSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run tag @s remove northSpawn
# execute as @a[tag=raiser,tag=northSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
# execute as @e[tag=necroSummon] run team join necromancer @s

# # Spawn the zombie to the left of the player if that is the block available. 
# execute as @a[tag=raiser,tag=westSpawn,scores={sneakTrigger=2..,summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess unless score @s frankensteinScore matches ..9 run summon minecraft:zombie ^1 ^ ^ {Tags:["necroSummon"]}
# execute as @a[tag=raiser,tag=westSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run tag @s remove westSpawn
# execute as @a[tag=raiser,tag=westSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
# execute as @e[tag=necroSummon] run team join necromancer @s

# # Spawn the zombie to the right of the player if that is the block available. 
# execute as @a[tag=raiser,tag=eastSpawn,scores={sneakTrigger=2..,summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess unless score @s frankensteinScore matches ..9 run summon minecraft:zombie ^-1 ^ ^ {Tags:["necroSummon"]}
# execute as @a[tag=raiser,tag=eastSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run tag @s remove eastSpawn
# execute as @a[tag=raiser,tag=eastSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
# execute as @e[tag=necroSummon] run team join necromancer @s


# # Spawn the zombie behind the player if that is the block available. 
# execute as @a[tag=raiser,tag=southSpawn,scores={sneakTrigger=2..,summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess unless score @s frankensteinScore matches ..9 run summon minecraft:zombie ^ ^ ^-1 {Tags:["necroSummon"]}
# execute as @a[tag=raiser,tag=southSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run tag @s remove southSpawn
# execute as @a[tag=raiser,tag=southSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
# execute as @e[tag=necroSummon] run team join necromancer @s



# FOR TESTING ONLY:
# Spawn the zombie in front of the player if that is the block available. 



# Check the blocks around the player to see if they are air. If they are, add a tag to the player to indicate which direction the skeleton should be spawned in. Starts in front then goes to sides, then behind.
execute as @a[scores={summonSuccess=0},tag=raiser] at @s anchored feet if block ^ ^1 ^1 air run tag @s add northSpawn
execute as @a[scores={summonSuccess=0},tag=raiser,tag=!northSpawn] at @s anchored feet if block ^1 ^1 ^ air run tag @s add eastSpawn
execute as @a[scores={summonSuccess=0},tag=raiser,tag=!northSpawn,tag=!eastSpawn] at @s anchored feet if block ^-1 ^1 ^ air run tag @s add westSpawn
execute as @a[scores={summonSuccess=0},tag=raiser,tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn] at @s anchored feet if block ^ ^1 ^-1 air run tag @s add southSpawn
execute as @a[scores={summonSuccess=0},tag=raiser,tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn,tag=!southSpawn] run tellraw @s {"text": "Could not find a location to summon","color": "red","bold": true}


execute as @a[tag=raiser,tag=northSpawn,scores={summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess unless score @s frankensteinScore matches ..9 run summon minecraft:zombie ^ ^ ^1 {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @a[tag=raiser,tag=northSpawn,scores={summonSuccess=1}] run tag @s remove northSpawn
execute as @a[tag=raiser,tag=northSpawn,scores={summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10

# Spawn the zombie to the left of the player if that is the block available. 
execute as @a[tag=raiser,tag=eastSpawn,scores={summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess unless score @s frankensteinScore matches ..9 run summon minecraft:zombie ^1 ^ ^ {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @a[tag=raiser,tag=eastSpawn,scores={summonSuccess=1}] run tag @s remove eastSpawn
execute as @a[tag=raiser,tag=eastSpawn,scores={summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10

# Spawn the zombie to the right of the player if that is the block available. 
execute as @a[tag=raiser,tag=westSpawn,scores={summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess unless score @s frankensteinScore matches ..9 run summon minecraft:zombie ^-1 ^ ^ {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @a[tag=raiser,tag=westSpawn,scores={summonSuccess=1}] run tag @s remove westSpawn
execute as @a[tag=raiser,tag=westSpawn,scores={summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10

# Spawn the zombie behind the player if that is the block available. 
execute as @a[tag=raiser,tag=southSpawn,scores={summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess unless score @s frankensteinScore matches ..9 run summon minecraft:zombie ^ ^ ^-1 {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @a[tag=raiser,tag=southSpawn,scores={summonSuccess=1}] run tag @s remove southSpawn
execute as @a[tag=raiser,tag=southSpawn,scores={summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
execute as @e[tag=necroSummon] run team join necromancer @s

# Reset the summon success score to 0 regardless of successful summon.
execute as @a[scores={summonSuccess=1}] run scoreboard players set @s summonSuccess 0