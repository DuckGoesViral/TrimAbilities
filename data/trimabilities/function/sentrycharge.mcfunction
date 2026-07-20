

execute if predicate trimabilities:is_sneaking unless score @s sentryCharge matches 100.. run scoreboard players add @s sentryCharge 1

execute if predicate trimabilities:is_sneaking run title @s actionbar ["",{"text":"Preparing Orbital Bombardment:","color":"green"},{"text":" ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"sentryCharge"},"bold":true,"color":"green"},{"text":" Blocks","bold":true,"color":"green"}]


execute if score @s sentryCharge matches 5..99 store result storage trimabilities:sentry particle.amount int 1 run scoreboard players get @s sentryCharge
execute if score @s sentryCharge matches 5..99 store result storage trimabilities:sentry particle.delta float .01 run scoreboard players get @s sentryCharge

execute if score @s sentryCharge matches 5..99 at @s run function trimabilities:sentryparticle with storage trimabilities:sentry particle

execute if score @s sentryCharge matches 100.. at @s run particle minecraft:flash{color:[1.0, 1.0, 1.0, 1.0]} ~ ~1 ~ 1.5 1.5 1.5 0 500 normal @a[distance=..100]
