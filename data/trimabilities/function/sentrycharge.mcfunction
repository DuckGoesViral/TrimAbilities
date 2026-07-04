

execute if predicate trimabilities:is_sneaking run scoreboard players add @s sentryCharge 1

execute if predicate trimabilities:is_sneaking run title @s actionbar ["",{"text":"Preparing Orbital Bombardment:","color":"green"},{"text":" ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"sentryCharge"},"bold":true,"color":"green"},{"text":" Blocks","bold":true,"color":"green"}]

execute if score @s sentryCharge matches 5.. at @s run particle minecraft:flash{color:[1.0, 1.0, 1.0, 1.0]} ~ ~1 ~ 0 0 0 0 1 normal @a
