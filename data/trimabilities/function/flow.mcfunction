#Remove flow tag if player is no longer wearing any flow trim
execute if score @s flow matches ..3 run attribute @s fall_damage_multiplier base set 1 
execute if score @s flow matches ..3 run attribute @s safe_fall_distance base set 3
execute if score @s flow matches 0 run tag @s remove flow


#Sub effect for Flow Trim 
execute if score @s flow matches 1 run effect give @s minecraft:jump_boost 1 0 true
execute if score @s flow matches 2 run effect give @s minecraft:jump_boost 1 1 true
execute if score @s flow matches 3 run effect give @s minecraft:jump_boost 1 2 true


# Flow Charge replenishment
execute as @s[scores={flow=4..}] unless score @s flowCharge matches 200.. run scoreboard players add @s flowCharge 1

execute as @s[scores={flow=4..}] if score @s flowTimer matches 1.. run scoreboard players set @s flowCooldown 7
execute as @s[scores={flow=4..}] if score @s flowTimer matches 1.. run scoreboard players remove @s flowCharge 50
execute as @s[scores={flow=4..}] if score @s flowTimer matches 1.. run scoreboard players remove @s flowTimer 1
execute as @s[scores={flow=4..}] if score @s flowCooldown matches 1.. run scoreboard players remove @s flowCooldown 1
execute as @s[scores={flow=4..}] if score @s flowTimer matches 0 run effect clear @s levitation

execute as @a[scores={flow=4..}] if score @s flowCharge matches ..49 run title @s actionbar ["",{"text":"Charge:"},{"text":" \u0f04 \u0f04 \u0f04 \u0f04 ","bold":true,"color":"gray"}] 
execute as @a[scores={flow=4..}] if score @s flowCharge matches 50..99 run title @s actionbar ["",{"text":"Charge:"},{"text":" \u0f04","bold":true,"color":"green"},{"text":" \u0f04 \u0f04 \u0f04 ","bold":true,"color":"gray"}]
execute as @a[scores={flow=4..}] if score @s flowCharge matches 100..149 run title @s actionbar ["",{"text":"Charge:"},{"text":" \u0f04","bold":true,"color":"green"},{"text":" \u0f04","bold":true,"color":"green"},{"text":" \u0f04 \u0f04 ","bold":true,"color":"gray"}]
execute as @a[scores={flow=4..}] if score @s flowCharge matches 150..199 run title @s actionbar ["",{"text":"Charge:"},{"text":" \u0f04","bold":true,"color":"green"},{"text":" \u0f04","bold":true,"color":"green"},{"text":" \u0f04","bold":true,"color":"green"},{"text":" \u0f04 ","bold":true,"color":"gray"}]
execute as @a[scores={flow=4..}] if score @s flowCharge matches 200.. run title @s actionbar ["",{"text":"Charge:"},{"text":" \u0f04 \u0f04 \u0f04 \u0f04 ","bold":true,"color":"green"}]

#double jump effect for Flow Trim
execute as @s[scores={flowCharge=50..,flowCooldown=0,flow=4..},predicate=trimabilities:is_sneaking,predicate=trimabilities:is_in_air] store result score @s flowTimer run effect give @s minecraft:levitation 1 75 true
execute at @s if score @s flowTimer matches 1.. run particle minecraft:cloud ~ ~-0.5 ~ 0.5 0.5 0.5 0 30
execute at @s if score @s flowTimer matches 1.. run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~-0.1 ~ 0.2 0.7