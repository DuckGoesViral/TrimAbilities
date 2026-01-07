
# # Spawn the zombie in front of the player if that is the block available. 
# execute as @s[tag=northSpawn,scores={sneakTrigger=2..,summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess run summon minecraft:zombie ^ ^ ^1 {Tags:["necroSummon"]}
# execute as @s[tag=northSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run tag @s remove northSpawn
# execute as @s[tag=northSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
# execute as @e[tag=necroSummon] run team join necromancer @s

# # Spawn the zombie to the left of the player if that is the block available. 
# execute as @s[tag=westSpawn,scores={sneakTrigger=2..,summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess run summon minecraft:zombie ^1 ^ ^ {Tags:["necroSummon"]}
# execute as @s[tag=westSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run tag @s remove westSpawn
# execute as @s[tag=westSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
# execute as @e[tag=necroSummon] run team join necromancer @s

# # Spawn the zombie to the right of the player if that is the block available. 
# execute as @s[tag=eastSpawn,scores={sneakTrigger=2..,summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess run summon minecraft:zombie ^-1 ^ ^ {Tags:["necroSummon"]}
# execute as @s[tag=eastSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run tag @s remove eastSpawn
# execute as @s[tag=eastSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
# execute as @e[tag=necroSummon] run team join necromancer @s


# # Spawn the zombie behind the player if that is the block available. 
# execute as @s[tag=southSpawn,scores={sneakTrigger=2..,summonSuccess=0}] at @s anchored eyes store success score @s summonSuccess run summon minecraft:zombie ^ ^ ^-1 {Tags:["necroSummon"]}
# execute as @s[tag=southSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run tag @s remove southSpawn
# execute as @s[tag=southSpawn,scores={sneakTrigger=2..,summonSuccess=1}] run scoreboard players operation @s frankensteinScore -= @s 10
# execute as @e[tag=necroSummon] run team join necromancer @s



# FOR TESTING ONLY:
# Spawn the zombie in front of the player if that is the block available. 



# Check the blocks around the player to see if they are air. If they are, add a tag to the player to indicate which direction the skeleton should be spawned in. Starts in front then goes to sides, then behind.

execute unless score @s mana matches 15.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 15.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Frankenstein!","color":"red","bold": true}]

scoreboard players remove @s mana 15

execute if score @s frankensteinScore matches ..9 at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute if score @s frankensteinScore matches ..9 run return run tellraw @s {"text": "Not enough souls to summon a zombie!","color": "red","bold": true}

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2

execute at @s anchored feet if block ^ ^ ^.5 air run tag @s add northSpawn
execute as @s[tag=!northSpawn] at @s anchored feet if block ^.5 ^ ^ air run tag @s add eastSpawn
execute as @s[tag=!northSpawn,tag=!eastSpawn] at @s anchored feet if block ^-.5 ^ ^ air run tag @s add westSpawn
execute as @s[tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn] at @s anchored feet if block ^ ^ ^-.5 air run tag @s add southSpawn
execute as @s[tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn,tag=!southSpawn] at @s anchored feet if block ~ ~ ~ air run tag @s add selfSpawn


execute as @s[tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn,tag=!southSpawn,tag=!selfSpawn] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute as @s[tag=!northSpawn,tag=!eastSpawn,tag=!westSpawn,tag=!southSpawn,tag=!selfSpawn] run return run tellraw @s {"text": "Could not find a location to summon","color": "red","bold": true}


execute as @s[tag=northSpawn] at @s anchored eyes run summon minecraft:zombie ^ ^ ^.5 {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @s[tag=northSpawn] run tag @s remove northSpawn

# Spawn the zombie to the left of the player if that is the block available. 
execute as @s[tag=eastSpawn] at @s anchored eyes run summon minecraft:zombie ^.5 ^ ^ {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @s[tag=eastSpawn] run tag @s remove eastSpawn

# Spawn the zombie to the right of the player if that is the block available. 
execute as @s[tag=westSpawn] at @s anchored eyes run summon minecraft:zombie ^-.5 ^ ^ {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @s[tag=westSpawn] run tag @s remove westSpawn

# Spawn the zombie behind the player if that is the block available. 
execute as @s[tag=southSpawn] at @s anchored eyes run summon minecraft:zombie ^ ^ ^-.5 {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @s[tag=southSpawn] run tag @s remove southSpawn

# Spawn the zombie on the player if that is the block available. 
execute as @s[tag=selfSpawn] at @s anchored eyes run summon minecraft:zombie ~ ~ ~ {Tags:["necroSummon"],DeathLootTable:"minecraft:empty"}
execute as @s[tag=selfSpawn] run tag @s remove selfSpawn

execute as @e[tag=necroSummon] run team join necromancer @s

scoreboard players remove @s frankensteinScore 10


execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 15 normal @a[distance=..15]


