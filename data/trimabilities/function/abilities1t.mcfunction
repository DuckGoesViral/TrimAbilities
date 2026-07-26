# ============================================================
# Runs EVERY TICK (called from trimabilities:tick).
# Keep this file lean: trim equipment detection lives in
# trimabilities:player/equipcheck (10t); only per-tick effect
# dispatch and per-tick housekeeping belong here.
# ============================================================

#Warrior

#Silence
#4.5 attack speed, 0.125 speed (default speed = 0.10000000149011612)
#execute if entity @a[scores={progressSilence=3..},nbt={Inventory:[{Slot:,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run function trimabilities:silence

#Tank

#Spire
#armor buffs
#execute if entity @a[scores={progressSpire=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run function trimabilities:spire

#Archer
scoreboard players reset @a subPower

#vex - air walk (detection in player/equipcheck; the fill logic needs 1t)

#Sentry (revived in main: advancement-based bow-draw detection)
execute as @a[scores={sentry=4..}] as @s[advancements={trimabilities:bow_draw=true}] run scoreboard players set @s bow_draw 1
execute as @a[scores={sentry=4..}] as @s[advancements={trimabilities:bow_draw=false}] run scoreboard players set @s bow_draw 0
execute as @a[scores={sentry=4..}] run advancement revoke @s only trimabilities:bow_draw


execute as @a[scores={sentry=4..}] if score @s sentryCharge matches 5.. if score @s sentryShot matches 1.. at @s run scoreboard players operation @e[type=arrow,limit=1,sort=nearest] sentryCharge = @s sentryCharge
execute as @a[scores={sentry=4..}] if score @s sentryCharge matches 5.. if score @s sentryShot matches 1.. at @s run scoreboard players reset @s sentryShot
execute as @a[scores={sentry=4..}] unless score @s bow_draw matches 1 run scoreboard players set @s sentryCharge 4

execute as @e[type=arrow,scores={sentryCharge=5..},nbt={inGround:1b}] run function trimabilities:sentryability

execute if entity @e[type=arrow,tag=sentryBarrage] as @e[type=ender_pearl] at @s if entity @e[type=arrow,tag=sentryBarrage,distance=..5] run playsound minecraft:entity.ender_eye.death block @a[distance=..30] ~ ~ ~ 10 1 1
execute if entity @e[type=arrow,tag=sentryBarrage] as @e[type=ender_pearl] at @s if entity @e[type=arrow,tag=sentryBarrage,distance=..5] run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1 25 normal @a[distance=..50]
execute if entity @e[type=arrow,tag=sentryBarrage] as @e[type=ender_pearl] at @s if entity @e[type=arrow,tag=sentryBarrage,distance=..5] run kill @s

# Mana regen timer (fires every 100 ticks)
scoreboard players add timer mana 1
execute if score timer mana matches 100.. as @a[tag=mage] unless score @s mana >= @s manaMax run function trimabilities:manaregen
execute if score timer mana matches 100.. as @a[tag=mage] if score @s mana > @s manaMax run scoreboard players operation @s mana = @s manaMax
execute if score timer mana matches 100.. run scoreboard players set timer mana 0

# Per-player mage handling (actionbar, spell triggers, casting)
execute as @a[tag=mage] run function trimabilities:player/mage1t

# Damage-orb immunity decay on players
execute as @a[tag=damageOrbImmunity] run scoreboard players add @s orbDeath 1
execute as @a[tag=damageOrbImmunity,scores={orbDeath=600..}] run tag @s remove damageOrbImmunity
execute as @a[scores={orbDeath=600..}] run scoreboard players reset @s orbDeath

# Spell-entity housekeeping - gated so ticks with no spell entities skip the scans
execute if entity @e[type=snow_golem,tag=cryoGolem,limit=1] run function trimabilities:spells/golemtick
execute if entity @e[type=item_display,tag=damageOrb,limit=1] run function trimabilities:spells/orbtick
execute if entity @e[type=armor_stand,tag=damageOrbMarker,limit=1] unless entity @e[type=item_display,tag=damageOrb,limit=1] run function trimabilities:spells/orbtick
execute if entity @e[type=item_display,tag=healPool,limit=1] run function trimabilities:spells/pooltick
execute if entity @e[type=marker,tag=iceMarker,limit=1] run function trimabilities:spells/icetick

# Blackhole ambient particle (from main; single line, typed scan)
execute as @e[type=marker,tag=prehole] run scoreboard players add @s holeDeath 1
execute as @e[type=marker,tag=prehole,scores={holeDeath=20..}] at @s run summon marker ~ ~ ~ {Tags:["blackhole"]}
execute as @e[type=marker,tag=prehole,scores={holeDeath=20..}] run kill @s

execute as @e[type=marker,tag=prehole] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 10 normal @a[distance=..60]
execute as @e[type=marker,tag=blackhole] at @s run particle minecraft:flash{color:[0.0, 0.0, 0.0, 0.0]} ~ ~1 ~ 0 0 0 0 10 normal @a[distance=..60]
execute if entity @e[type=marker,tag=blackhole] as @e[type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,tag=!holeblack] at @s if entity @e[type=marker,tag=blackhole,distance=..20] facing entity @e[type=marker,tag=blackhole,limit=1,sort=nearest] feet run tp ^ ^ ^.175
execute if entity @e[type=marker,tag=blackhole] as @e[type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,tag=!holeblack] at @s if entity @e[type=marker,tag=blackhole,distance=..3.5] facing entity @e[type=marker,tag=blackhole,limit=1,sort=nearest] feet run tp ^ ^ ^.3
execute if entity @e[type=marker,tag=blackhole] as @e[type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,tag=!holeblack] at @s if entity @e[type=marker,tag=blackhole,distance=..3.5] run tag @s add stuckHole
execute if entity @e[type=marker,tag=blackhole] at @e[type=marker,tag=blackhole] run kill @e[type=ender_pearl,distance=..3.5]
execute as @e[tag=stuckHole,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] at @s unless entity @e[type=marker,tag=blackhole,distance=..3.5] run attribute @s gravity base reset
execute as @e[tag=stuckHole,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display] at @s unless entity @e[type=marker,tag=blackhole,distance=..3.5] run tag @s remove stuckHole
execute as @e[tag=stuckHole] run attribute @s gravity base set 0.0

execute as @e[type=marker,tag=blackhole] run scoreboard players add @s holeDeath 1
execute as @e[type=marker,tag=blackhole,scores={holeDeath=400..}] run kill @s

execute as @a[tag=holeblack] run scoreboard players add @s holeDeath 1
execute as @a[tag=holeblack,scores={holeDeath=420..}] run tag @s remove holeblack
execute as @a[scores={holeDeath=420..}] run scoreboard players reset @s holeDeath

# Homing-missile steering - existence-gated (skips untyped @e scan when no missiles)
execute if entity @e[type=armor_stand,tag=missileMarker,limit=1] run function trimabilities:spells/missiletick


execute if entity @a[tag=domed] run function trimabilities:spiredome2

execute as @e[tag=lightningStunned] run scoreboard players add @s lightningStun 1
execute as @e[tag=lightningStunned,scores={lightningStun=20..}] run attribute @s movement_speed base reset
execute as @e[tag=lightningStunned,scores={lightningStun=20..}] run attribute @s jump_strength base reset
execute as @e[tag=lightningStunned,scores={lightningStun=20..}] run tag @s remove lightningStunned
execute as @e[scores={lightningStun=20..}] run scoreboard players reset @s lightningStun


#bolt sound calculations
execute as @a[tag=bolt] run scoreboard players operation @s boltSoundPitch = @s boltMS
execute as @a[tag=bolt,scores={boltGear=1}] store result storage trimabilities:bolt pitch float 0.1 run scoreboard players operation @s boltSoundPitch += 0 constants
execute as @a[tag=bolt,scores={boltGear=2}] store result storage trimabilities:bolt pitch float 0.1 run scoreboard players operation @s boltSoundPitch -= 8 constants
execute as @a[tag=bolt,scores={boltGear=3}] store result storage trimabilities:bolt pitch float 0.1 run scoreboard players operation @s boltSoundPitch -= 16 constants
execute as @a[tag=bolt,scores={boltGear=4}] store result storage trimabilities:bolt pitch float 0.1 run scoreboard players operation @s boltSoundPitch -= 22 constants
execute as @a[tag=bolt,scores={boltGear=5}] store result storage trimabilities:bolt pitch float 0.1 run scoreboard players operation @s boltSoundPitch -= 28 constants
execute as @a[tag=bolt,scores={boltGear=6}] store result storage trimabilities:bolt pitch float 0.1 run scoreboard players operation @s boltSoundPitch -= 32 constants
execute as @a[tag=bolt,scores={boltGear=7}] store result storage trimabilities:bolt pitch float 0.1 run scoreboard players operation @s boltSoundPitch -= 36 constants
execute as @a[tag=bolt,scores={boltGear=8}] store result storage trimabilities:bolt pitch float 0.1 run scoreboard players operation @s boltSoundPitch -= 40 constants

#Sound effects for bolts
execute as @a[scores={bolt=4..}] unless predicate trimabilities:stopped run function trimabilities:boltsound with storage trimabilities:bolt
execute as @a[scores={bolt=4..}] at @s unless predicate trimabilities:stopped if score @s boltSoundPitch matches 11.. run playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 0.1 2
execute as @a[scores={bolt=4..}] at @s unless predicate trimabilities:stopped if score @s boltSoundPitch matches ..-1 run playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 0.1 2
