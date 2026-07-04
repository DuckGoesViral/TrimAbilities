# Give one new player (@s) a unique, stable numeric id.
# Used so kick buttons can target a specific teammate via /trigger.
scoreboard players add #idcounter config 1
scoreboard players operation @s player_id = #idcounter config
tag @s add has_id
