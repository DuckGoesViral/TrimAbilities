# Cryo golem lifetime, every tick — only called while a cryoGolem exists.
execute as @e[type=snow_golem,tag=cryoGolem] run scoreboard players add @s orbDeath 1
execute as @e[type=snow_golem,tag=cryoGolem,scores={orbDeath=2400..}] run kill @s
