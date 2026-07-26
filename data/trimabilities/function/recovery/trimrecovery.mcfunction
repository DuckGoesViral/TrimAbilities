execute if score @s shaper matches 1.. if score @s insuranceBudget matches 2.. run return run function trimabilities:recovery/shaper
execute if score @s dune matches 1.. if score @s insuranceBudget matches 4.. run return run function trimabilities:recovery/dune
execute if score @s snout matches 1.. if score @s insuranceBudget matches 6.. run return run function trimabilities:recovery/snout
execute if score @s host matches 1.. if score @s insuranceBudget matches 2.. run return run function trimabilities:recovery/host
execute if score @s vital matches 1.. if score @s insuranceBudget matches 4.. run return run function trimabilities:recovery/vital
execute if score @s ward matches 1.. if score @s insuranceBudget matches 6.. run return run function trimabilities:recovery/ward
execute if score @s wayfinder matches 1.. if score @s insuranceBudget matches 2.. run return run function trimabilities:recovery/wayfinder
execute if score @s wild matches 1.. if score @s insuranceBudget matches 4.. run return run function trimabilities:recovery/wild
execute if score @s eye matches 1.. if score @s insuranceBudget matches 6.. run return run function trimabilities:recovery/eye
execute if score @s raiser matches 1.. if score @s insuranceBudget matches 2.. run return run function trimabilities:recovery/raiser
execute if score @s stray matches 1.. if score @s insuranceBudget matches 4.. run return run function trimabilities:recovery/stray
execute if score @s echo matches 1.. if score @s insuranceBudget matches 6.. run return run function trimabilities:recovery/echo
execute if score @s coast matches 1.. if score @s insuranceBudget matches 1.. run return run function trimabilities:recovery/coast
execute if score @s tide matches 1.. if score @s insuranceBudget matches 3.. run return run function trimabilities:recovery/tide
execute if score @s ravine matches 1.. if score @s insuranceBudget matches 3.. run return run function trimabilities:recovery/ravine
execute if score @s rib matches 1.. if score @s insuranceBudget matches 5.. run return run function trimabilities:recovery/rib
execute if score @s vex matches 1.. if score @s insuranceBudget matches 4.. run return run function trimabilities:recovery/vex
execute if score @s bolt matches 1.. if score @s insuranceBudget matches 4.. run return run function trimabilities:recovery/bolt
execute if score @s flow matches 1.. if score @s insuranceBudget matches 6.. run return run function trimabilities:recovery/flow

tellraw @s[scores={recoveryTotal=1..}] ["",{"text":"----------------------------------------------------","color":"green"},{"text":"\n"},{"text":"Recovered ","color":"red"},{"score":{"name":"@s","objective":"recoveryTotal"},"color":"red"},{"text":" trims from your last death!","color":"red"},{"text":"\n"},{"text":"These trims can be ","color":"white"},{"text":"collected ","bold":true,"color":"yellow"},{"text":"at the ","color":"white"},{"text":"trim shrine","bold":true,"color":"blue"},{"text":" at spawn (0,0)","color":"white"},{"text":"\n"},{"text":"To turn trim recovery off, run","color": "gray"},{"text":"\n"},{"text":"'/trigger Trim_Recovery_Toggle'","color":"gray"},{"text":"\n"},{"text":"----------------------------------------------------","color":"green"}]
scoreboard players reset @s recoveryTotal
scoreboard players reset @s recoveryDeath

