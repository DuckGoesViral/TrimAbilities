execute as @a[scores={progressSilence=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:silence"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:silence"}}}]}] run tag @s add silence
execute if entity @a[tag=silence,tag=!unlockedSilence] as @a[tag=silence,tag=!unlockedSilence] at @s run function trimabilities:unlocked/silence
execute as @a[tag=silence] run effect give @s strength infinite 1 true
execute as @a[tag=silence] run attribute @s generic.attack_speed base set 5
execute as @a[tag=silence] run attribute @s generic.movement_speed base set 0.15


execute as @a[scores={sneakTrigger=2..},tag=WcooldownTimer,tag=silence] run scoreboard players operation @s WcooldownCurrent = @s WcooldownMax
execute as @a[scores={sneakTrigger=2..},tag=WcooldownTimer,tag=silence] run scoreboard players operation @s WcooldownCurrent -= @s WcooldownTimer2

execute as @a[scores={sneakTrigger=2..},tag=WcooldownTimer,tag=silence] run tellraw @s ["",{"text":"This ability is not available yet. It will be available in ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"WcooldownCurrent"},"bold":true,"color":"yellow"},{"text":" second(s)","bold":true,"color":"red"}]
execute as @a[scores={sneakTrigger=2..},tag=WcooldownTimer,tag=silence] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~


execute as @a[scores={sneakTrigger=2..},tag=!WcooldownTimer,tag=silence] run tag @s add syphon
execute as @a[tag=syphon,tag=silence] run scoreboard players add @s syphonSecond 1

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=1}] run effect give @s regeneration 10 1 true

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=20}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=40}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=60}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=80}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=100}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=120}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=140}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=160}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=180}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic

execute as @a[tag=syphon,tag=silence,scores={syphonSecond=200}] at @s run damage @e[distance=1..20,limit=1,sort=nearest] 1 magic


execute as @a[tag=syphon,tag=silence,scores={syphonSecond=200}] run tag @s remove syphon
execute as @a[scores={syphonSecond=200}] run scoreboard players set @s syphonSecond 0





execute as @a[scores={sneakTrigger=2..},tag=!WcooldownTimer,tag=silence] run scoreboard players set @s WcooldownTimer 0
execute as @a[scores={sneakTrigger=2..},tag=!WcooldownTimer,tag=silence] run scoreboard players set @s WcooldownTimer2 0
execute as @a[scores={sneakTrigger=2..},tag=!WcooldownTimer,tag=silence] run tag @s add WcooldownTimer
execute as @a[scores={sneakTrigger=2..}] run scoreboard players set @s sneakTrigger 0


execute as @a[tag=WcooldownTimer,scores={WcooldownTimer=..19,WcooldownTimer2=..59}] run scoreboard players add @s WcooldownTimer 1
execute as @a[tag=WcooldownTimer,scores={WcooldownTimer=20}] run scoreboard players add @s WcooldownTimer2 1
execute as @a[tag=WcooldownTimer,scores={WcooldownTimer=20}] run scoreboard players set @s WcooldownTimer 0
execute as @a[tag=WcooldownTimer,scores={WcooldownTimer2=60},tag=silence] run tag @s remove WcooldownTimer