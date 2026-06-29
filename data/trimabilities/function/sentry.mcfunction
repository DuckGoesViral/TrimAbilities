


#execute unless score @s sentry = @s sentryOld run effect clear @s weakness

execute if score @s sentry matches 0 run tag @s remove sentry

execute if score @s sentry matches 1 run scoreboard players add @s subPower 4
execute if score @s sentry matches 2 run scoreboard players add @s subPower 8
execute if score @s sentry matches 3 run scoreboard players add @s subPower 12

execute if score @s sentry matches 4 if entity @s[tag=!unlockedSentry] at @s run function trimabilities:unlocked/sentry
execute if score @s sentry matches 4 if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] run effect give @s speed 1 1 true
execute if score @s sentry matches 4 if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run effect give @s speed 1 1 true


execute if score @s sentry matches 4 as @s[advancements={trimabilities:bow_draw=true}] run scoreboard players set @s bow_draw 1
execute if score @s sentry matches 4 as @s[advancements={trimabilities:bow_draw=false}] run scoreboard players set @s bow_draw 0
execute if score @s sentry matches 4 run advancement revoke @s only trimabilities:bow_draw


scoreboard players operation @s sentryOld = @s sentry


#ability is found in ability20t

