

execute if predicate trimabilities:is_sneaking run scoreboard players add @s sentryCharge 1

execute if score @s sentryCharge matches 5.. at @s run particle minecraft:flash{color:[1.0, 1.0, 1.0, 1.0]} ~ ~1 ~ 0 0 0 0 1 normal @a
