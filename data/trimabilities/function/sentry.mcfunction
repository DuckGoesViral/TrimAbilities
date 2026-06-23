execute as @a[scores={progressSentry=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:sentry"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:sentry"}}}]}] run tag @s add sentry
execute if entity @a[tag=sentry,tag=!unlockedSentry] as @a[tag=sentry,tag=!unlockedSentry] at @s run function trimabilities:unlocked/sentry
execute as @a[tag=sentry] run function trimabilities:sentryarrow



execute as @a[advancements={trimabilities:spyglass=true}] run scoreboard players set @s spyglass 1
execute as @a[advancements={trimabilities:spyglass=false}] run scoreboard players set @s spyglass 0
advancement revoke @a only trimabilities:spyglass



execute as @a[scores={spyglass=1},tag=sentry] run function trimabilities:sentryfire


execute as @a[scores={sneakTrigger=2..,sentryBoom=1},tag=sentry] run function trimabilities:sentryboomoff
execute as @a[scores={sneakTrigger=2..,sentryBoom=0},tag=sentry] run function trimabilities:sentryboomon




execute as @e[type=arrow,tag=arrow,nbt={inGround:1b}] at @s run function trimabilities:sentryboom
execute as @e[type=arrow,tag=arrow,nbt={inGround:1b}] at @s run kill @s

execute as @e[type=arrow,tag=arrow] at @s unless entity @a[tag=sentry,distance=..3.5] run tag @s add arrowgo
execute as @e[type=arrow,tag=arrow,tag=arrowgo] at @s if entity @e[type=!arrow,type=!item,type=!experience_orb,distance=..3] run function trimabilities:sentryboom
execute as @e[type=arrow,tag=arrow,tag=arrowgo] at @s if entity @e[type=!arrow,type=!item,type=!experience_orb,distance=..3] run kill @s

