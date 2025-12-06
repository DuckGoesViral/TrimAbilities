#abilities
function trimabilities:abilities1t














execute as @a[predicate=trimabilities:is_sneaking,tag=!isSneaking] run scoreboard players add @s sneakTrigger 1
execute as @a[predicate=trimabilities:is_sneaking,scores={sneakTrigger=1..}] run tag @s add isSneaking

execute as @a[predicate=trimabilities:not_sneaking] run tag @s remove isSneaking


execute as @a[predicate=trimabilities:not_sneaking,scores={sneakTimer=..4}] run scoreboard players add @s sneakTimer 1
execute as @a[predicate=trimabilities:is_sneaking] run scoreboard players set @s sneakTimer 0
execute as @a[predicate=trimabilities:not_sneaking,scores={sneakTimer=5..}] run scoreboard players set @s sneakTrigger 0









