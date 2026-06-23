

execute if score @s recoveryShaper matches 1.. run return run function trimabilities:shrine/collect/shaper
execute if score @s recoveryDune matches 1.. run return run function trimabilities:shrine/collect/dune
execute if score @s recoverySnout matches 1.. run return run function trimabilities:shrine/collect/snout
execute if score @s recoverySilence matches 1.. run return run function trimabilities:shrine/collect/silence
execute if score @s recoveryHost matches 1.. run return run function trimabilities:shrine/collect/host
execute if score @s recoveryVital matches 1.. run return run function trimabilities:shrine/collect/vital
execute if score @s recoveryWard matches 1.. run return run function trimabilities:shrine/collect/ward
execute if score @s recoverySpire matches 1.. run return run function trimabilities:shrine/collect/spire
execute if score @s recoveryWayfinder matches 1.. run return run function trimabilities:shrine/collect/wayfinder
execute if score @s recoveryWild matches 1.. run return run function trimabilities:shrine/collect/wild
execute if score @s recoveryEye matches 1.. run return run function trimabilities:shrine/collect/eye
execute if score @s recoverySentry matches 1.. run return run function trimabilities:shrine/collect/sentry
execute if score @s recoveryRaiser matches 1.. run return run function trimabilities:shrine/collect/raiser
execute if score @s recoveryStray matches 1.. run return run function trimabilities:shrine/collect/stray
execute if score @s recoveryEcho matches 1.. run return run function trimabilities:shrine/collect/echo
execute if score @s recoveryStorm matches 1.. run return run function trimabilities:shrine/collect/storm
execute if score @s recoveryCoast matches 1.. run return run function trimabilities:shrine/collect/coast
execute if score @s recoveryTide matches 1.. run return run function trimabilities:shrine/collect/tide
execute if score @s recoveryRavine matches 1.. run return run function trimabilities:shrine/collect/ravine
execute if score @s recoveryRib matches 1.. run return run function trimabilities:shrine/collect/rib
execute if score @s recoveryVex matches 1.. run return run function trimabilities:shrine/collect/vex


tellraw @s {"text":"All your trims have been collected!","color":"red"}