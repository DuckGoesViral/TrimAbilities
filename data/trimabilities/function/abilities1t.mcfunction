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
execute as @a[tag=vex] run function trimabilities:vex

#Sentry (revived in main: advancement-based bow-draw detection)
execute as @a[scores={sentry=4..}] as @s[advancements={trimabilities:bow_draw=true}] run scoreboard players set @s bow_draw 1
execute as @a[scores={sentry=4..}] as @s[advancements={trimabilities:bow_draw=false}] run scoreboard players set @s bow_draw 0
execute as @a[scores={sentry=4..}] run advancement revoke @s only trimabilities:bow_draw


execute as @a[scores={sentry=4..}] if score @s sentryCharge matches 5.. if score @s sentryShot matches 1.. at @s run scoreboard players operation @e[type=arrow,limit=1,sort=nearest] sentryCharge = @s sentryCharge
execute as @a[scores={sentry=4..}] if score @s sentryCharge matches 5.. if score @s sentryShot matches 1.. at @s run scoreboard players reset @s sentryShot
execute as @a[scores={sentry=4..}] unless score @s bow_draw matches 1 run scoreboard players set @s sentryCharge 4

execute as @e[type=arrow,scores={sentryCharge=5..},nbt={inGround:1b}] run function trimabilities:sentryability

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
execute as @e[type=marker,tag=blackhole] at @s run particle minecraft:flash{color:[0.0, 0.0, 0.0, 0.0]} ~ ~ ~ 0 0 0 0 10 normal @a[distance=..50]

# Homing-missile steering - existence-gated (skips untyped @e scan when no missiles)
execute if entity @e[type=armor_stand,tag=missileMarker,limit=1] run function trimabilities:spells/missiletick
