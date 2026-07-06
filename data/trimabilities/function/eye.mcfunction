

execute unless score @s eye = @s eyeOld run effect clear @s weakness

execute if score @s eye matches 0 run tag @s remove eye

execute if score @s eye matches 1 run scoreboard players add @s subPower 3
execute if score @s eye matches 2 run scoreboard players add @s subPower 6
execute if score @s eye matches 3 run scoreboard players add @s subPower 9

execute if score @s eye matches 4 if entity @s[tag=!unlockedEye] at @s run function trimabilities:unlocked/eye
execute if score @s eye matches 4 run effect give @s weakness infinite 0 true

scoreboard players operation @s eyeOld = @s eye





execute as @s[advancements={trimabilities:spyglass=true}] run scoreboard players set @s spyglass 1
execute as @s[advancements={trimabilities:spyglass=false}] run scoreboard players set @s spyglass 0
advancement revoke @s only trimabilities:spyglass




execute if score @s spyglass matches 1 run scoreboard players set @s eyeFumble 0

execute if score @s spyglass matches 1 unless score @s eyeReload matches 27.. run title @s actionbar {text:"Reloading...",color:"red"}
execute if score @s spyglass matches 1 if score @s eyeReload matches 27 run title @s actionbar {text:"Ready to Fire!",color:"green"}

execute if score @s spyglass matches 1 if score @s eyeDamage matches 1.. run scoreboard players set @s eyeReload 0
execute if score @s spyglass matches 1 if score @s eyeDamage matches 1.. run title @s actionbar {text:"DON'T TAKE DAMAGE",color:"red"}
execute if score @s spyglass matches 1 if score @s eyeDamage matches 1.. run scoreboard players set @s eyeDamage 0



execute if items entity @s weapon.offhand spyglass if score @s eyeHand matches 1 if score @s eyeReload matches 27.. run function trimabilities:eyefire
execute if items entity @s weapon.mainhand spyglass if score @s eyeHand matches 2 if score @s eyeReload matches 27.. run function trimabilities:eyefire

execute if items entity @s weapon.offhand spyglass run scoreboard players set @s eyeHand 2
execute if items entity @s weapon.mainhand spyglass run scoreboard players set @s eyeHand 1


execute unless score @s spyglass matches 1 if score @s eyeReload matches 5.. unless score @s eyeFumble matches 1 run scoreboard players remove @s eyeReload 5
execute unless score @s spyglass matches 1 if score @s eyeReload matches 5.. unless score @s eyeFumble matches 1 run scoreboard players set @s eyeFumble 1


execute if score @s spyglass matches 1 unless score @s eyeReload matches 28.. run scoreboard players add @s eyeReload 1


