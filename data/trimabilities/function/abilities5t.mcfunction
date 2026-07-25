# ============================================================
# Runs every 5 ticks (self-scheduling).
# Trim DETECTION moved to trimabilities:player/equipcheck (10t).
# This file keeps the per-trim effect DISPATCH at 5t so every
# ability cooldown (ward 2400, silence 240, dune, rib...) still
# counts at its original rate. Do not move these to another cadence.
# ============================================================

#Utility
execute as @a[tag=coast] run function trimabilities:coast
execute as @a[tag=tide] run function trimabilities:tide
execute as @a[tag=ravine] run function trimabilities:ravine
execute as @a[tag=rib] run function trimabilities:rib
execute as @a[tag=vex] run function trimabilities:vex
execute as @a[tag=bolt] run function trimabilities:bolt

#Warrior
execute as @a[tag=shaper] run function trimabilities:shaper
execute as @a[tag=dune] run function trimabilities:dune
execute as @a[tag=snout] run function trimabilities:snout
execute as @a[tag=silence] run function trimabilities:silence

#Tank
execute as @a[tag=host] run function trimabilities:host
execute as @a[tag=vital] run function trimabilities:vital
execute as @a[tag=ward] run function trimabilities:ward
execute as @a[tag=spire] run function trimabilities:spire

#Archer
execute as @a[tag=wayfinder] run function trimabilities:wayfinder
execute as @a[tag=wild] run function trimabilities:wild
execute as @a[tag=eye] run function trimabilities:eye
execute as @a[tag=sentry] run function trimabilities:sentry

#Wizard
execute as @a[tag=raiser] run function trimabilities:raiser
execute as @a[tag=stray] run function trimabilities:stray
execute as @a[tag=echo] run function trimabilities:echo
execute as @a[tag=storm] run function trimabilities:storm

#Sentry
#arrows shot move faster and deal more damage
#execute if entity @a[scores={progressSentry=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:sentry"}}}]}] run function trimabilities:sentry



# Cryo summoner cleanup (must run even when all golems are dead)
execute as @a[tag=cryoSummon] at @s unless entity @e[type=snow_golem,tag=cryoSummon] run tag @s remove cryoSummon

# Golem auras + orb AoE - gated so they cost nothing while no spell entities exist
execute if entity @e[type=snow_golem,limit=1] run function trimabilities:spells/golem5t
execute if entity @e[type=item_display,tag=damageOrb,limit=1] run function trimabilities:spells/orb5t

# Trim recovery toggle
execute as @a run scoreboard players enable @s Trim_Recovery_Toggle
execute as @a[scores={Trim_Recovery_Toggle=1..}] run function trimabilities:recovery/playertoggle
execute as @a[scores={Trim_Recovery_Toggle=1..}] run scoreboard players set @s Trim_Recovery_Toggle 0

# Bone trim (wolves) moved to abilities20t - wolf scans don't need 5t

schedule function trimabilities:abilities5t 5t






execute as @e[type=arrow,tag=sentryBarrage] at @s if entity @s[nbt={inGround:1b}] as @e[type=!item,type=!chest_minecart,type=!armor_stand,type=!marker,type=!area_effect_cloud,type=!item_display,distance=..5] run damage @s 10 explosion
execute as @e[type=arrow,tag=sentryBarrage] at @s if entity @s[nbt={inGround:1b}] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:1b,ignited:1b,Fuse:0s}
execute as @e[type=arrow,tag=sentryBarrage] at @s if entity @s[nbt={inGround:1b}] run playsound minecraft:entity.zombie_villager.cure block @a[distance=..20] ~ ~ ~ 1 2
execute as @e[type=arrow,tag=sentryBarrage] at @s if entity @s[nbt={inGround:1b}] run kill @s

