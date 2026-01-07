

# Facing South = 1
execute as @a[scores={zombieSuccess=0},tag=raiser,y_rotation=-45..45] run scoreboard players set @s playerFacing 1

# Facing West = 2
execute as @a[scores={zombieSuccess=0},tag=raiser,y_rotation=45..135] run scoreboard players set @s playerFacing 2

# Facing North = 3
execute as @a[scores={zombieSuccess=0},tag=raiser,y_rotation=135..180] run scoreboard players set @s playerFacing 3
execute as @a[scores={zombieSuccess=0},tag=raiser,y_rotation=-180..-135] run scoreboard players set @s playerFacing 3

# Facing East = 4
execute as @a[scores={zombieSuccess=0},tag=raiser,y_rotation=-135..-45] run scoreboard players set @s playerFacing 4

# Check the blocks around the player to see if they are air. If they are, add a tag to the player to indicate which direction the skeleton should be spawned in. Starts in front then goes to sides, then behind.
# Facing South Check
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser] at @s if block ~ ~1 ~1 air run tag @s add southSpawn
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=southSpawn] at @s if block ~ ~2 ~1 air run tag @s add 3blocksouth
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=!northSpawn] at @s if block ~1 ~1 ~ air run tag @s add eastSpawn
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=eastSpawn] at @s if block ~1 ~2 ~ air run tag @s add 3blockeast
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=!northSpawn,tag=!eastSpawn] at @s if block ~-1 ~1 ~ air run tag @s add westSpawn
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=westSpawn] at @s if block ~-1 ~2 ~ air run tag @s add 3blockwest
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn] at @s if block ~ ~1 ~-1 air run tag @s add northSpawn
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=northSpawn] at @s if block ~ ~2 ~-1 air run tag @s add 3blocknorth
execute as @a[scores={summonSuccess=0},tag=raiser,tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn,tag=!southSpawn] run tellraw @s {"text": "Could not find a location to summon","color": "red","bold": true}

# Facing West Check
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser] at @s if block ~ ~1 ~1 air run tag @s add southSpawn
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=southSpawn] at @s if block ~ ~2 ~1 air run tag @s add 3blocksouth
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=!northSpawn] at @s if block ~1 ~1 ~ air run tag @s add eastSpawn
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=eastSpawn] at @s if block ~1 ~2 ~ air run tag @s add 3blockeast
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=!northSpawn,tag=!eastSpawn] at @s if block ~-1 ~1 ~ air run tag @s add westSpawn
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=westSpawn] at @s if block ~-1 ~2 ~ air run tag @s add 3blockwest
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn] at @s if block ~ ~1 ~-1 air run tag @s add northSpawn
execute as @a[scores={zombieSuccess=0,playerFacing=1},tag=raiser,tag=northSpawn] at @s if block ~ ~2 ~-1 air run tag @s add 3blocknorth
execute as @a[scores={summonSuccess=0},tag=raiser,tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn,tag=!southSpawn] run tellraw @s {"text": "Could not find a location to summon","color": "red","bold": true}

# Spawn the skeleton in front of the player if that is the block available.
execute as @a[tag=raiser,tag=southSpawn,scores={summonSuccess=0},tag=3blocknorth] at @s store success score @s summonSuccess unless score @s frankensteinScore matches ..19 run summon minecraft:wither_skeleton ~ ~ ~1 {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @a[tag=raiser,tag=southSpawn,scores={summonSuccess=1}] run tag @s remove 3blocksouth
execute as @a[tag=raiser,tag=southSpawn,scores={summonSuccess=1}] run scoreboard players remove @s frankensteinScore 50
execute as @a[tag=raiser,tag=southSpawn,scores={summonSuccess=1}] run tag @s remove southSpawn


# Spawn the skeleton to the left of the player if that is the block available. 
execute as @a[tag=raiser,tag=eastSpawn,scores={summonSuccess=0},tag=3blockeast] at @s store success score @s summonSuccess unless score @s frankensteinScore matches ..19 run summon minecraft:wither_skeleton ~1 ~ ~ {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @a[tag=raiser,tag=eastSpawn,scores={summonSuccess=1}] run tag @s remove 3blockeast
execute as @a[tag=raiser,tag=eastSpawn,scores={summonSuccess=1}] run scoreboard players remove @s frankensteinScore 50
execute as @a[tag=raiser,tag=eastSpawn,scores={summonSuccess=1}] run tag @s remove eastSpawn


# Spawn the skeleton to the right of the player if that is the block available. 
execute as @a[tag=raiser,tag=westSpawn,scores={summonSuccess=0},tag=3blockwest] at @s store success score @s summonSuccess unless score @s frankensteinScore matches ..19 run summon minecraft:wither_skeleton ~-1 ~ ~ {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @a[tag=raiser,tag=westSpawn,scores={summonSuccess=1}] run tag @s remove 3blockwest
execute as @a[tag=raiser,tag=westSpawn,scores={summonSuccess=1}] run scoreboard players remove @s frankensteinScore 50
execute as @a[tag=raiser,tag=westSpawn,scores={summonSuccess=1}] run tag @s remove westSpawn


# Spawn the skeleton behind the player if that is the block available. 
execute as @a[tag=raiser,tag=northSpawn,scores={summonSuccess=0},tag=3blocknorth] at @s store success score @s summonSuccess unless score @s frankensteinScore matches ..19 run summon minecraft:wither_skeleton ~ ~ ~-1 {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @a[tag=raiser,tag=northSpawn,scores={summonSuccess=1}] run tag @s remove 3blocksouth
execute as @a[tag=raiser,tag=northSpawn,scores={summonSuccess=1}] run execute as @a[tag=raiser,tag=westSpawn,scores={summonSuccess=1}] run scoreboard players remove @s frankensteinScore 50
execute as @a[tag=raiser,tag=northSpawn,scores={summonSuccess=1}] run tag @s remove northSpawn

execute as @e[tag=necroSummon] run team join necromancer @s

# Reset the summon success score to 0 regardless of successful summon.
execute as @a[scores={summonSuccess=1}] run scoreboard players set @s summonSuccess 0

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 15 normal @a[distance=..15]
