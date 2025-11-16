#Warrior

#Shaper
#haste but slowness
execute if entity @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:shaper"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:shaper"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:shaper"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run function trimabilities:shaper

#Dune
#fast but low damage
execute if entity @a[scores={progressDune=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:dune"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run function trimabilities:dune

#Snout
#fire res, regen 1
execute if entity @a[scores={progressSnout=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:snout"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:snout"}}}]}] run function trimabilities:snout


#NoShaper
execute as @a[tag=shaper,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add noshaper
execute as @a[tag=shaper,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add noshaper
execute as @a[tag=shaper,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add noshaper
execute as @a[tag=shaper,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:shaper"}}}]}] run tag @s add noshaper

execute if entity @a[tag=noshaper] as @a[tag=noshaper] run function trimabilities:noshaper

#NoDune
execute as @a[tag=dune,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add nodune
execute as @a[tag=dune,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add nodune
execute as @a[tag=dune,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add nodune
execute as @a[tag=dune,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:dune"}}}]}] run tag @s add nodune

execute if entity @a[tag=nodune] as @a[tag=nodune] run function trimabilities:nodune

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
execute if entity @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:host"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:host"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:host"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run function trimabilities:host

#Ward
#health boost 5, speed set at 0.08
execute if entity @a[scores={progressWard=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:ward"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:ward"}}}]}] run function trimabilities:ward



#NoHost
execute as @a[tag=host,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add nohost
execute as @a[tag=host,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add nohost
execute as @a[tag=host,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add nohost
execute as @a[tag=host,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:host"}}}]}] run tag @s add nohost

execute if entity @a[tag=nohost] as @a[tag=nohost] run function trimabilities:nohost

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
execute as @a[tag=wayfinder,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add nowayfinder
execute as @a[tag=wayfinder,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add nowayfinder
execute as @a[tag=wayfinder,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add nowayfinder
execute as @a[tag=wayfinder,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run tag @s add nowayfinder

execute if entity @a[tag=nowayfinder] as @a[tag=nowayfinder] run function trimabilities:nowayfinder

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
execute as @a[tag=raiser,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add noraiser
execute as @a[tag=raiser,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add noraiser
execute as @a[tag=raiser,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add noraiser
execute as @a[tag=raiser,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run tag @s add noraiser

execute if entity @a[tag=noraiser] as @a[tag=noraiser] run function trimabilities:noraiser

#NoRib
execute as @a[tag=rib,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add norib
execute as @a[tag=rib,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add norib
execute as @a[tag=rib,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add norib
execute as @a[tag=rib,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run tag @s add norib

execute if entity @a[tag=norib] as @a[tag=norib] run function trimabilities:norib

#NoVex
execute as @a[tag=vex,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add novex
execute as @a[tag=vex,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add novex
execute as @a[tag=vex,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add novex
execute as @a[tag=vex,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run tag @s add novex

execute if entity @a[tag=novex] as @a[tag=novex] run function trimabilities:novex


#Aquatic

#Coast
#water breathing
execute if entity @a[scores={mcLvl=2..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:coast"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:coast"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:coast"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run function trimabilities:coast


#Tide
#water breathing, dolphins grace
execute if entity @a[scores={progressTide=2..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:tide"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:tide"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:tide"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run function trimabilities:tide


#NoCoast
execute as @a[tag=coast,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run tag @s add nocoast
execute as @a[tag=coast,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run tag @s add nocoast
execute as @a[tag=coast,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run tag @s add nocoast
execute as @a[tag=coast,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:coast"}}}]}] run tag @s add nocoast

execute if entity @a[tag=nocoast] as @a[tag=nocoast] run function trimabilities:nocoast

#NoTide
execute as @a[tag=tide,nbt=!{Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run tag @s add notide
execute as @a[tag=tide,nbt=!{Inventory:[{Slot: 102b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run tag @s add notide
execute as @a[tag=tide,nbt=!{Inventory:[{Slot: 101b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run tag @s add notide
execute as @a[tag=tide,nbt=!{Inventory:[{Slot: 100b,tag:{Trim:{pattern:"minecraft:tide"}}}]}] run tag @s add notide

execute if entity @a[tag=notide] as @a[tag=notide] run function trimabilities:notide


schedule function trimabilities:abilities5t 5t