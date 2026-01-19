#Utility

#Coast
#water breathing
execute as @a[scores={coast=1..}] run scoreboard players set @s coast 0

execute as @a if entity @s[scores={mcLvl=2..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run scoreboard players add @s coast 1
execute as @a if entity @s[scores={mcLvl=2..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run scoreboard players add @s coast 1
execute as @a if entity @s[scores={mcLvl=2..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run scoreboard players add @s coast 1
execute as @a if entity @s[scores={mcLvl=2..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run scoreboard players add @s coast 1

execute as @a[scores={coast=1..}] run tag @s add coast

execute as @a[tag=coast] run function trimabilities:coast


#Tide
#water breathing, dolphins grace
execute as @a[scores={tide=1..}] run scoreboard players set @s tide 0

execute as @a if entity @s[scores={mcLvl=4..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run scoreboard players add @s tide 1
execute as @a if entity @s[scores={mcLvl=4..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run scoreboard players add @s tide 1
execute as @a if entity @s[scores={mcLvl=4..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run scoreboard players add @s tide 1
execute as @a if entity @s[scores={mcLvl=4..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run scoreboard players add @s tide 1

execute as @a[scores={tide=1..}] run tag @s add tide

execute as @a[tag=tide] run function trimabilities:tide


#Ravine
execute as @a[scores={ravine=1..}] run scoreboard players set @s ravine 0

execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"trimabilities:ravine"}}}]}] run scoreboard players add @s ravine 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"trimabilities:ravine"}}}]}] run scoreboard players add @s ravine 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"trimabilities:ravine"}}}]}] run scoreboard players add @s ravine 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"trimabilities:ravine"}}}]}] run scoreboard players add @s ravine 1

execute as @a[scores={ravine=1..}] run tag @s add ravine

execute as @a[tag=ravine] run function trimabilities:ravine

#Rib
execute as @a[scores={rib=1..}] run scoreboard players set @s rib 0

execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run scoreboard players add @s rib 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run scoreboard players add @s rib 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run scoreboard players add @s rib 1
execute as @a if entity @s[scores={mcLvl=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run scoreboard players add @s rib 1

execute as @a[scores={rib=1..}] run tag @s add rib

execute as @a[tag=rib] run function trimabilities:rib




#Warrior

#Shaper
#haste but slowness
execute as @a[scores={shaper=1..}] run scoreboard players set @s shaper 0

execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run scoreboard players add @s shaper 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run scoreboard players add @s shaper 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run scoreboard players add @s shaper 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run scoreboard players add @s shaper 1

execute as @a[scores={shaper=1..}] run tag @s add shaper

execute as @a[tag=shaper] run function trimabilities:shaper

#Dune
#fast but low damage
execute as @a[scores={dune=1..}] run scoreboard players set @s dune 0

execute as @a if entity @s[scores={progressDune=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run scoreboard players add @s dune 1
execute as @a if entity @s[scores={progressDune=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run scoreboard players add @s dune 1
execute as @a if entity @s[scores={progressDune=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run scoreboard players add @s dune 1
execute as @a if entity @s[scores={progressDune=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run scoreboard players add @s dune 1

execute as @a[scores={dune=1..}] run tag @s add dune

execute as @a[tag=dune] run function trimabilities:dune

#Snout
#fire res, regen 1
execute as @a[scores={snout=1..}] run scoreboard players reset @s snout

execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run scoreboard players add @s snout 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run scoreboard players add @s snout 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run scoreboard players add @s snout 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run scoreboard players add @s snout 1

execute as @a[scores={snout=1..}] run tag @s add snout

execute if entity @a[tag=snout] run function trimabilities:snout


#NoShaper
#execute as @a[tag=shaper,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add noshaper
#execute as @a[tag=shaper,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add noshaper
#execute as @a[tag=shaper,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add noshaper
#execute as @a[tag=shaper,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add noshaper
#
#execute if entity @a[tag=noshaper] as @a[tag=noshaper] run function trimabilities:noshaper

#NoDune
#execute as @a[tag=dune,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add nodune
#execute as @a[tag=dune,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add nodune
#execute as @a[tag=dune,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add nodune
#execute as @a[tag=dune,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add nodune
#
#execute if entity @a[tag=nodune] as @a[tag=nodune] run function trimabilities:nodune

#NoSnout
execute if entity @a[scores={mcLvl=6..,wLvl=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run function trimabilities:snout

execute as @a[tag=snout,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run tag @s add nosnout
execute as @a[tag=snout,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run tag @s add nosnout
execute as @a[tag=snout,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run tag @s add nosnout
execute as @a[tag=snout,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run tag @s add nosnout

execute if entity @a[tag=nosnout] as @a[tag=nosnout] run function trimabilities:nosnout

#NoSilence
execute as @a[tag=silence,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run tag @s add nosilence
execute as @a[tag=silence,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run tag @s add nosilence
execute as @a[tag=silence,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run tag @s add nosilence
execute as @a[tag=silence,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run tag @s add nosilence

execute if entity @a[tag=nosilence] as @a[tag=nosilence] run function trimabilities:nosilence

execute as @a[tag=syphon,tag=!silence] run tag @s remove syphon
execute as @a[tag=syphon,tag=!silence] run scoreboard players set @s syphonSecond 0

#Tank

#Host
#haste but less hearts

execute as @a[scores={host=1..}] run scoreboard players set @s host 0

execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run scoreboard players add @s host 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run scoreboard players add @s host 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run scoreboard players add @s host 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run scoreboard players add @s host 1

execute as @a[scores={host=1..}] run tag @s add host

execute as @a[tag=host] run function trimabilities:host


#Vital
execute as @a[scores={vital=1..}] run scoreboard players set @s vital 0

execute as @a if entity @s[scores={progressVital=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"trimabilities:vital"}}}]}] run scoreboard players add @s vital 1
execute as @a if entity @s[scores={progressVital=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"trimabilities:vital"}}}]}] run scoreboard players add @s vital 1
execute as @a if entity @s[scores={progressVital=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"trimabilities:vital"}}}]}] run scoreboard players add @s vital 1
execute as @a if entity @s[scores={progressVital=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"trimabilities:vital"}}}]}] run scoreboard players add @s vital 1

execute as @a[scores={vital=1..}] run tag @s add vital

execute as @a[tag=vital] run function trimabilities:vital




#Ward
#health boost 5, speed set at 0.08
execute if entity @a[scores={progressWard=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run function trimabilities:ward






#Raiser
#haste but weakness


execute as @a[scores={raiser=1..}] run scoreboard players set @s raiser 0

execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run scoreboard players add @s raiser 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run scoreboard players add @s raiser 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run scoreboard players add @s raiser 1
execute as @a if entity @s[scores={mcLvl=1..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run scoreboard players add @s raiser 1

execute as @a[scores={raiser=1..}] run tag @s add raiser

execute as @a[tag=raiser] run function trimabilities:raiser


#Stray
execute as @a[scores={stray=1..}] run scoreboard players set @s stray 0

execute as @a if entity @s[scores={progressStray=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"trimabilities:stray"}}}]}] run scoreboard players add @s stray 1
execute as @a if entity @s[scores={progressStray=3..},nbt={Inventory:[{Slot: 102b,tag:{Trim:{pattern:"trimabilities:stray"}}}]}] run scoreboard players add @s stray 1
execute as @a if entity @s[scores={progressStray=3..},nbt={Inventory:[{Slot: 101b,tag:{Trim:{pattern:"trimabilities:stray"}}}]}] run scoreboard players add @s stray 1
execute as @a if entity @s[scores={progressStray=3..},nbt={Inventory:[{Slot: 100b,tag:{Trim:{pattern:"trimabilities:stray"}}}]}] run scoreboard players add @s stray 1

execute as @a[scores={stray=1..}] run tag @s add stray

execute as @a[tag=stray] run function trimabilities:stray


#NoHost
#execute as @a[tag=host,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add nohost
#execute as @a[tag=host,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add nohost
#execute as @a[tag=host,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add nohost
#execute as @a[tag=host,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add nohost
#
#execute if entity @a[tag=nohost] as @a[tag=nohost] run function trimabilities:nohost

#NoWard
execute as @a[tag=ward,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run tag @s add noward
execute as @a[tag=ward,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run tag @s add noward
execute as @a[tag=ward,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run tag @s add noward
execute as @a[tag=ward,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run tag @s add noward

execute if entity @a[tag=noward] as @a[tag=noward] run function trimabilities:noward

#NoSpire
execute as @a[tag=spire,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run tag @s add nospire
execute as @a[tag=spire,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run tag @s add nospire
execute as @a[tag=spire,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run tag @s add nospire
execute as @a[tag=spire,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run tag @s add nospire

execute if entity @a[tag=nospire] as @a[tag=nospire] run function trimabilities:nospire

#Archer

#NoWayfinder


#execute as @a[tag=wayfinder,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add nowayfinder
#execute as @a[tag=wayfinder,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add nowayfinder
#execute as @a[tag=wayfinder,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add nowayfinder
#execute as @a[tag=wayfinder,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add nowayfinder
#
#execute if entity @a[tag=nowayfinder] as @a[tag=nowayfinder] run function trimabilities:nowayfinder

#NoWild
execute as @a[tag=wild,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run tag @s add nowild
execute as @a[tag=wild,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run tag @s add nowild
execute as @a[tag=wild,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run tag @s add nowild
execute as @a[tag=wild,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run tag @s add nowild

execute if entity @a[tag=nowild] as @a[tag=nowild] run function trimabilities:nowild

#NoEye
execute as @a[tag=eye,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:eye"}}}]}] run tag @s add noeye
execute as @a[tag=eye,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:eye"}}}]}] run tag @s add noeye
execute as @a[tag=eye,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:eye"}}}]}] run tag @s add noeye
execute as @a[tag=eye,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:eye"}}}]}] run tag @s add noeye

execute if entity @a[tag=noeye] as @a[tag=noeye] run function trimabilities:noeye

#NoSentry
execute as @a[tag=sentry,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:sentry"}}}]}] run tag @s add nosentry
execute as @a[tag=sentry,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:sentry"}}}]}] run tag @s add nosentry
execute as @a[tag=sentry,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:sentry"}}}]}] run tag @s add nosentry
execute as @a[tag=sentry,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:sentry"}}}]}] run tag @s add nosentry
execute as @a[tag=!sentry] run scoreboard players set @s shoot 0

execute if entity @a[tag=nosentry] as @a[tag=nosentry] run function trimabilities:nosentry

#Necomancer

#NoRaiser
#execute as @a[tag=raiser,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add noraiser
#execute as @a[tag=raiser,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add noraiser
#execute as @a[tag=raiser,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add noraiser
#execute as @a[tag=raiser,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add noraiser
#
#execute if entity @a[tag=noraiser] as @a[tag=noraiser] run function trimabilities:noraiser

#NoRib
#execute as @a[tag=rib,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add norib
#execute as @a[tag=rib,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add norib
#execute as @a[tag=rib,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add norib
#execute as @a[tag=rib,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add norib
#
#execute if entity @a[tag=norib] as @a[tag=norib] run function trimabilities:norib
#
##NoVex
#execute as @a[tag=vex,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add novex
#execute as @a[tag=vex,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add novex
#execute as @a[tag=vex,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add novex
#execute as @a[tag=vex,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add novex
#
#execute if entity @a[tag=novex] as @a[tag=novex] run function trimabilities:novex



execute at @e[type=item_display,tag=damageOrb] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker] run damage @s 2 magic
execute at @e[type=item_display,tag=damageOrb] positioned ~ ~-2 ~ as @e[distance=..3,tag=!damageOrbImmunity,tag=!damageOrb,tag=!damageOrbMarker] at @s run particle minecraft:damage_indicator ~ ~.5 ~ .1 .1 .1 0.25 3 normal @a

execute as @a run scoreboard players enable @s Trim_Recovery_Toggle
execute as @a[scores={Trim_Recovery_Toggle=1..}] run function trimabilities:recovery/playertoggle
execute as @a[scores={Trim_Recovery_Toggle=1..}] run scoreboard players set @s Trim_Recovery_Toggle 0





schedule function trimabilities:abilities5t 5t




