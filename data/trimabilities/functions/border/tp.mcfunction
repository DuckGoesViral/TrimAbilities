effect give @s resistance infinite 9 true
particle minecraft:flash ~ ~ ~ .1 .1 .1 0 30
execute unless block ~ ~-.5 ~ air run effect clear @s resistance
execute unless block ~ ~-.5 ~ air run tag @s remove falling
