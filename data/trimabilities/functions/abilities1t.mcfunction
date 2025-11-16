#Warrior

#Silence
#4.5 attack speed, 0.125 speed (default speed = 0.10000000149011612)
execute if entity @a[scores={progressSilence=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run function trimabilities:silence


#Tank


#Spire
#armor buffs
execute if entity @a[scores={progressSpire=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run function trimabilities:spire


#Archer

#Wayfinder
#haste but blindness
execute if entity @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:wayfinder"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}]}] run function trimabilities:wayfinder


#Wild
#jump boost 4, 0.125 speed
execute if entity @a[scores={progressWild=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:wild"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:wild"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:wild"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:wild"}}}]}] run function trimabilities:wild


#Eye
#luck 2, invisibility
execute if entity @a[scores={progressEye=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:eye"}}}]}] run function trimabilities:eye


#Sentry
#arrows shot move faster and deal more damage
execute if entity @a[scores={progressSentry=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:sentry"}}}]}] run function trimabilities:sentry


#Necromancer

#Raiser
#haste but weakness
execute if entity @a[scores={mcLvl=1..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:raiser"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:raiser"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:raiser"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:raiser"}}}]}] run function trimabilities:raiser


#Rib
#fire res, netherite bonusus
execute if entity @a[scores={progressRib=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:rib"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:rib"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:rib"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:rib"}}}]}] run function trimabilities:rib


#Vex
#heal - no debufs
execute if entity @a[scores={progressVex=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:vex"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:vex"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:vex"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:vex"}}}]}] run function trimabilities:vex




