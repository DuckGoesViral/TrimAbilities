# Ice-cube freeze lock + melt, every tick — only called while an iceMarker exists.
execute as @e[tag=frozen] at @s if entity @e[type=marker,tag=iceMarker,distance=..1] run tp @s @e[type=marker,tag=iceMarker,distance=..1,limit=1,sort=nearest]
execute as @e[tag=frozen] at @s unless entity @e[type=marker,tag=iceMarker,distance=..1] run tag @s remove frozen
execute as @e[type=marker,tag=iceMarker] run scoreboard players add @s iceTimer 1
execute as @e[type=marker,tag=iceMarker,scores={iceTimer=60..}] at @s if block ~ ~ ~ ice run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=iceMarker,scores={iceTimer=60..}] at @s if block ~ ~1 ~ ice run setblock ~ ~1 ~ air destroy
execute as @e[type=marker,tag=iceMarker,scores={iceTimer=60..}] run kill @s
