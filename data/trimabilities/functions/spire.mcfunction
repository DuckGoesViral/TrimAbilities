execute as @a[scores={progressSpire=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:spire"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:spire"}}}]}] run tag @s add spire
execute if entity @a[tag=spire,tag=!unlockedSpire] as @a[tag=spire,tag=!unlockedSpire] at @s run function trimabilities:unlocked/spire
execute as @a[tag=spire,scores={mcLvl=8..,tLvl=5}] run attribute @s generic.max_health base set 30
execute as @a[tag=spire,scores={mcLvl=8..,tLvl=5}] run effect give @s resistance infinite 2 true



execute as @a[scores={sneakTrigger=2..},tag=TcooldownTimer,tag=spire] run scoreboard players operation @s TcooldownCurrent = @s TcooldownMax
execute as @a[scores={sneakTrigger=2..},tag=TcooldownTimer,tag=spire] run scoreboard players operation @s TcooldownCurrent -= @s TcooldownTimer2

execute as @a[scores={sneakTrigger=2..},tag=TcooldownTimer,tag=spire] run tellraw @s ["",{"text":"This ability is not available yet. It will be available in ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"TcooldownCurrent"},"bold":true,"color":"yellow"},{"text":" second(s)","bold":true,"color":"red"}]
execute as @a[scores={sneakTrigger=2..},tag=TcooldownTimer,tag=spire] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~


execute as @a[scores={sneakTrigger=2..},tag=!TcooldownTimer,tag=spire] run effect give @s resistance 10 9 true
execute as @a[scores={sneakTrigger=2..},tag=!TcooldownTimer,tag=spire] run effect give @s slowness 10 9 true
execute as @a[scores={sneakTrigger=2..},tag=!TcooldownTimer,tag=spire] run effect give @s absorption 120 4 true
execute as @a[scores={sneakTrigger=2..},tag=!TcooldownTimer,tag=spire] run effect give @s regeneration 10 1 true


execute as @a[scores={sneakTrigger=2..},tag=!TcooldownTimer,tag=spire] run scoreboard players set @s TcooldownTimer 0
execute as @a[scores={sneakTrigger=2..},tag=!TcooldownTimer,tag=spire] run scoreboard players set @s TcooldownTimer2 0
execute as @a[scores={sneakTrigger=2..},tag=!TcooldownTimer,tag=spire] run tag @s add TcooldownTimer
execute as @a[scores={sneakTrigger=2..}] run scoreboard players set @s sneakTrigger 0


execute as @a[tag=TcooldownTimer,scores={TcooldownTimer=..19,TcooldownTimer2=..179}] run scoreboard players add @s TcooldownTimer 1
execute as @a[tag=TcooldownTimer,scores={TcooldownTimer=20}] run scoreboard players add @s TcooldownTimer2 1
execute as @a[tag=TcooldownTimer,scores={TcooldownTimer=20}] run scoreboard players set @s TcooldownTimer 0
execute as @a[tag=TcooldownTimer,scores={TcooldownTimer2=300},tag=spire] run tag @s remove TcooldownTimer