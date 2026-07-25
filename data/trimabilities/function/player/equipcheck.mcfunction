# ============================================================
# Per-player trim equipment detection. Runs as @s = one player,
# dispatched from trimabilities:abilities10t (every 10 ticks).
#
# Why this file exists: the old layout ran ~110 world-level
# `execute as @a ... nbt=...` lines, each iterating every player.
# Here the player list is walked ONCE, and each trim's level/progress
# score is checked (cheap) BEFORE any equipment NBT is read (expensive).
# Effect dispatch stays in abilities1t/abilities5t so cooldown pacing
# is unchanged; only detection frequency changed (5t -> 10t).
# ============================================================

# Armor checks must never run on a non-player executor.
execute unless entity @s[type=player] run return 0

#Coast (McLvl 2+)
execute if score @s coast matches 1.. run scoreboard players set @s coast 0
execute if score @s mcLvl matches 2.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:coast"}}}}}] run scoreboard players add @s coast 1
execute if score @s mcLvl matches 2.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:coast"}}}}}] run scoreboard players add @s coast 1
execute if score @s mcLvl matches 2.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:coast"}}}}}] run scoreboard players add @s coast 1
execute if score @s mcLvl matches 2.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:coast"}}}}}] run scoreboard players add @s coast 1
execute if score @s coast matches 1.. run tag @s add coast

#Tide (McLvl 4+)
execute if score @s tide matches 1.. run scoreboard players set @s tide 0
execute if score @s mcLvl matches 4.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:tide"}}}}}] run scoreboard players add @s tide 1
execute if score @s mcLvl matches 4.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:tide"}}}}}] run scoreboard players add @s tide 1
execute if score @s mcLvl matches 4.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:tide"}}}}}] run scoreboard players add @s tide 1
execute if score @s mcLvl matches 4.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:tide"}}}}}] run scoreboard players add @s tide 1
execute if score @s tide matches 1.. run tag @s add tide

#Ravine (McLvl 3+)
execute if score @s ravine matches 1.. run scoreboard players set @s ravine 0
execute if score @s mcLvl matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"trimabilities:ravine"}}}}}] run scoreboard players add @s ravine 1
execute if score @s mcLvl matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"trimabilities:ravine"}}}}}] run scoreboard players add @s ravine 1
execute if score @s mcLvl matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"trimabilities:ravine"}}}}}] run scoreboard players add @s ravine 1
execute if score @s mcLvl matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"trimabilities:ravine"}}}}}] run scoreboard players add @s ravine 1
execute if score @s ravine matches 1.. run tag @s add ravine

#Rib (McLvl 6+)
execute if score @s rib matches 1.. run scoreboard players set @s rib 0
execute if score @s mcLvl matches 6.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:rib"}}}}}] run scoreboard players add @s rib 1
execute if score @s mcLvl matches 6.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:rib"}}}}}] run scoreboard players add @s rib 1
execute if score @s mcLvl matches 6.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:rib"}}}}}] run scoreboard players add @s rib 1
execute if score @s mcLvl matches 6.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:rib"}}}}}] run scoreboard players add @s rib 1
execute if score @s rib matches 1.. run tag @s add rib

#Bolt (McLvl 5+)
execute if score @s bolt matches 1.. run scoreboard players set @s bolt 0
execute if score @s mcLvl matches 4.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:bolt"}}}}}] run scoreboard players add @s bolt 1
execute if score @s mcLvl matches 4.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:bolt"}}}}}] run scoreboard players add @s bolt 1
execute if score @s mcLvl matches 4.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:bolt"}}}}}] run scoreboard players add @s bolt 1
execute if score @s mcLvl matches 4.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:bolt"}}}}}] run scoreboard players add @s bolt 1
execute if score @s bolt matches 1.. run tag @s add bolt

#Flow (McLvl 7+)
execute if score @s flow matches 1.. run scoreboard players set @s flow 0
execute if score @s mcLvl matches 7.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:flow"}}}}}] run scoreboard players add @s flow 1
execute if score @s mcLvl matches 7.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:flow"}}}}}] run scoreboard players add @s flow 1
execute if score @s mcLvl matches 7.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:flow"}}}}}] run scoreboard players add @s flow 1
execute if score @s mcLvl matches 7.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:flow"}}}}}] run scoreboard players add @s flow 1
execute if score @s flow matches 1.. run tag @s add flow

#Shaper (McLvl 1+)
execute if score @s shaper matches 1.. run scoreboard players set @s shaper 0
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:shaper"}}}}}] run scoreboard players add @s shaper 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:shaper"}}}}}] run scoreboard players add @s shaper 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:shaper"}}}}}] run scoreboard players add @s shaper 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:shaper"}}}}}] run scoreboard players add @s shaper 1
execute if score @s shaper matches 1.. run tag @s add shaper

#Dune (Warrior progress 3+)
execute if score @s dune matches 1.. run scoreboard players set @s dune 0
execute if score @s progressDune matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:dune"}}}}}] run scoreboard players add @s dune 1
execute if score @s progressDune matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:dune"}}}}}] run scoreboard players add @s dune 1
execute if score @s progressDune matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:dune"}}}}}] run scoreboard players add @s dune 1
execute if score @s progressDune matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:dune"}}}}}] run scoreboard players add @s dune 1
execute if score @s dune matches 1.. run tag @s add dune

#Snout (Warrior progress 3+)
execute if score @s snout matches 1.. run scoreboard players set @s snout 0
execute if score @s progressSnout matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:snout"}}}}}] run scoreboard players add @s snout 1
execute if score @s progressSnout matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:snout"}}}}}] run scoreboard players add @s snout 1
execute if score @s progressSnout matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:snout"}}}}}] run scoreboard players add @s snout 1
execute if score @s progressSnout matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:snout"}}}}}] run scoreboard players add @s snout 1
execute if score @s snout matches 1.. run tag @s add snout

#Silence (Warrior progress 3+)
execute if score @s silence matches 1.. run scoreboard players set @s silence 0
execute if score @s progressSilence matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:silence"}}}}}] run scoreboard players add @s silence 1
execute if score @s progressSilence matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:silence"}}}}}] run scoreboard players add @s silence 1
execute if score @s progressSilence matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:silence"}}}}}] run scoreboard players add @s silence 1
execute if score @s progressSilence matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:silence"}}}}}] run scoreboard players add @s silence 1
execute if score @s silence matches 1.. run tag @s add silence

#Host (McLvl 1+)
execute if score @s host matches 1.. run scoreboard players set @s host 0
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:host"}}}}}] run scoreboard players add @s host 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:host"}}}}}] run scoreboard players add @s host 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:host"}}}}}] run scoreboard players add @s host 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:host"}}}}}] run scoreboard players add @s host 1
execute if score @s host matches 1.. run tag @s add host

#Vital (Tank progress 3+)
execute if score @s vital matches 1.. run scoreboard players set @s vital 0
execute if score @s progressVital matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"trimabilities:vital"}}}}}] run scoreboard players add @s vital 1
execute if score @s progressVital matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"trimabilities:vital"}}}}}] run scoreboard players add @s vital 1
execute if score @s progressVital matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"trimabilities:vital"}}}}}] run scoreboard players add @s vital 1
execute if score @s progressVital matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"trimabilities:vital"}}}}}] run scoreboard players add @s vital 1
execute if score @s vital matches 1.. run tag @s add vital

#Ward (Tank progress 3+)
execute if score @s ward matches 1.. run scoreboard players set @s ward 0
execute if score @s progressWard matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:ward"}}}}}] run scoreboard players add @s ward 1
execute if score @s progressWard matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:ward"}}}}}] run scoreboard players add @s ward 1
execute if score @s progressWard matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:ward"}}}}}] run scoreboard players add @s ward 1
execute if score @s progressWard matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:ward"}}}}}] run scoreboard players add @s ward 1
execute if score @s ward matches 1.. run tag @s add ward

#Spire (Tank progress 3+)
execute if score @s spire matches 1.. run scoreboard players set @s spire 0
execute if score @s progressSpire matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:spire"}}}}}] run scoreboard players add @s spire 1
execute if score @s progressSpire matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:spire"}}}}}] run scoreboard players add @s spire 1
execute if score @s progressSpire matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:spire"}}}}}] run scoreboard players add @s spire 1
execute if score @s progressSpire matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:spire"}}}}}] run scoreboard players add @s spire 1
execute if score @s spire matches 1.. run tag @s add spire

#Wayfinder (McLvl 1+)
execute if score @s wayfinder matches 1.. run scoreboard players set @s wayfinder 0
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:wayfinder"}}}}}] run scoreboard players add @s wayfinder 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:wayfinder"}}}}}] run scoreboard players add @s wayfinder 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:wayfinder"}}}}}] run scoreboard players add @s wayfinder 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:wayfinder"}}}}}] run scoreboard players add @s wayfinder 1
execute if score @s wayfinder matches 1.. run tag @s add wayfinder

#Wild (Archer progress 3+)
execute if score @s wild matches 1.. run scoreboard players set @s wild 0
execute if score @s progressWild matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:wild"}}}}}] run scoreboard players add @s wild 1
execute if score @s progressWild matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:wild"}}}}}] run scoreboard players add @s wild 1
execute if score @s progressWild matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:wild"}}}}}] run scoreboard players add @s wild 1
execute if score @s progressWild matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:wild"}}}}}] run scoreboard players add @s wild 1
execute if score @s wild matches 1.. run tag @s add wild

#Eye (Archer progress 3+)
execute if score @s eye matches 1.. run scoreboard players set @s eye 0
execute if score @s progressEye matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:eye"}}}}}] run scoreboard players add @s eye 1
execute if score @s progressEye matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:eye"}}}}}] run scoreboard players add @s eye 1
execute if score @s progressEye matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:eye"}}}}}] run scoreboard players add @s eye 1
execute if score @s progressEye matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:eye"}}}}}] run scoreboard players add @s eye 1
execute if score @s eye matches 1.. run tag @s add eye

#Sentry (Archer progress 3+)
execute if score @s sentry matches 1.. run scoreboard players set @s sentry 0
execute if score @s progressSentry matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:sentry"}}}}}] run scoreboard players add @s sentry 1
execute if score @s progressSentry matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:sentry"}}}}}] run scoreboard players add @s sentry 1
execute if score @s progressSentry matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:sentry"}}}}}] run scoreboard players add @s sentry 1
execute if score @s progressSentry matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:sentry"}}}}}] run scoreboard players add @s sentry 1
execute if score @s sentry matches 1.. run tag @s add sentry

#Vex (McLvl 5+) - detection moved here from abilities1t (was every tick)
execute if score @s vex matches 1.. run scoreboard players set @s vex 0
execute if score @s mcLvl matches 5.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:vex"}}}}}] run scoreboard players add @s vex 1
execute if score @s mcLvl matches 5.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:vex"}}}}}] run scoreboard players add @s vex 1
execute if score @s mcLvl matches 5.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:vex"}}}}}] run scoreboard players add @s vex 1
execute if score @s mcLvl matches 5.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:vex"}}}}}] run scoreboard players add @s vex 1
execute if score @s vex matches 1.. run tag @s add vex

#Raiser (McLvl 1+)
execute if score @s raiser matches 1.. run scoreboard players set @s raiser 0
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"minecraft:raiser"}}}}}] run scoreboard players add @s raiser 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"minecraft:raiser"}}}}}] run scoreboard players add @s raiser 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"minecraft:raiser"}}}}}] run scoreboard players add @s raiser 1
execute if score @s mcLvl matches 1.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"minecraft:raiser"}}}}}] run scoreboard players add @s raiser 1
execute if score @s raiser matches 1.. run tag @s add raiser

#Stray (Necromancer progress 3+)
execute if score @s stray matches 1.. run scoreboard players set @s stray 0
execute if score @s progressStray matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"trimabilities:stray"}}}}}] run scoreboard players add @s stray 1
execute if score @s progressStray matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"trimabilities:stray"}}}}}] run scoreboard players add @s stray 1
execute if score @s progressStray matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"trimabilities:stray"}}}}}] run scoreboard players add @s stray 1
execute if score @s progressStray matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"trimabilities:stray"}}}}}] run scoreboard players add @s stray 1
execute if score @s stray matches 1.. run tag @s add stray

#Echo (Necromancer progress 3+)
execute if score @s echo matches 1.. run scoreboard players set @s echo 0
execute if score @s progressEcho matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"trimabilities:echo"}}}}}] run scoreboard players add @s echo 1
execute if score @s progressEcho matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"trimabilities:echo"}}}}}] run scoreboard players add @s echo 1
execute if score @s progressEcho matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"trimabilities:echo"}}}}}] run scoreboard players add @s echo 1
execute if score @s progressEcho matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"trimabilities:echo"}}}}}] run scoreboard players add @s echo 1
execute if score @s echo matches 1.. run tag @s add echo

#Storm (Necromancer progress 3+)
execute if score @s storm matches 1.. run scoreboard players set @s storm 0
execute if score @s progressStorm matches 3.. if entity @s[nbt={equipment:{head:{components:{"minecraft:trim":{pattern:"trimabilities:storm"}}}}}] run scoreboard players add @s storm 1
execute if score @s progressStorm matches 3.. if entity @s[nbt={equipment:{chest:{components:{"minecraft:trim":{pattern:"trimabilities:storm"}}}}}] run scoreboard players add @s storm 1
execute if score @s progressStorm matches 3.. if entity @s[nbt={equipment:{legs:{components:{"minecraft:trim":{pattern:"trimabilities:storm"}}}}}] run scoreboard players add @s storm 1
execute if score @s progressStorm matches 3.. if entity @s[nbt={equipment:{feet:{components:{"minecraft:trim":{pattern:"trimabilities:storm"}}}}}] run scoreboard players add @s storm 1
execute if score @s storm matches 1.. run tag @s add storm
