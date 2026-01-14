

execute as DuckGoesViral at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:barrier
execute as DuckGoesViral at @s unless predicate trimabilities:is_sneaking run fill ~ ~-1 ~ ~ ~-1 ~ barrier replace minecraft:air
execute as DuckGoesViral at @s if predicate trimabilities:is_sneaking run fill ~ ~-.5 ~ ~ ~-.5 ~ air replace minecraft:barrier




