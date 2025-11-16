scoreboard objectives add sentryRange dummy



execute as @a[scores={sneakTrigger=2..},tag=AcooldownTimer,tag=sentry] run scoreboard players operation @s AcooldownCurrent = @s AcooldownMax
execute as @a[scores={sneakTrigger=2..},tag=AcooldownTimer,tag=sentry] run scoreboard players operation @s AcooldownCurrent -= @s AcooldownTimer2

execute as @a[scores={sneakTrigger=2..},tag=AcooldownTimer,tag=sentry] run tellraw @s ["",{"text":"This ability is not available yet. It will be available in ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"AcooldownCurrent"},"bold":true,"color":"yellow"},{"text":" second(s)","bold":true,"color":"red"}]
execute as @a[scores={sneakTrigger=2..},tag=AcooldownTimer,tag=sentry] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~

execute as @a[scores={sneakTrigger=2..},tag=!AcooldownTimer,tag=sentry] run scoreboard players set @s sentryRange 35
execute as @a[scores={sneakTrigger=2..},tag=!AcooldownTimer,tag=sentry] at @s anchored eyes run playsound minecraft:entity.generic.explode ambient @a[distance=..40] ~ ~ ~ 0.2 2
execute as @a[scores={sneakTrigger=2..},tag=!AcooldownTimer,tag=sentry] at @s anchored eyes run function trimabilities:sentryshoot


execute as @a[scores={sneakTrigger=2..},tag=!AcooldownTimer,tag=sentry] run scoreboard players set @s AcooldownTimer 0
execute as @a[scores={sneakTrigger=2..},tag=!AcooldownTimer,tag=sentry] run scoreboard players set @s AcooldownTimer2 0
execute as @a[scores={sneakTrigger=2..},tag=!AcooldownTimer,tag=sentry] run tag @s add AcooldownTimer
execute as @a[scores={sneakTrigger=2..}] run scoreboard players set @s sneakTrigger 0


execute as @a[tag=AcooldownTimer,scores={AcooldownTimer=..19,AcooldownTimer2=..0}] run scoreboard players add @s AcooldownTimer 1
execute as @a[tag=AcooldownTimer,scores={AcooldownTimer=20}] run scoreboard players add @s AcooldownTimer2 1
execute as @a[tag=AcooldownTimer,scores={AcooldownTimer=20}] run scoreboard players set @s AcooldownTimer 0
execute as @a[tag=AcooldownTimer,scores={AcooldownTimer2=0},tag=sentry] run tag @s remove AcooldownTimer