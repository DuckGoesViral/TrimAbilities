execute as @a[scores={wildsBailCountdown=6..10}] if score @s wildsBailCountdown matches 5.. run title @s title ["",{"text":"BAILED OUT IN:","bold":true,"color":"#e0e000"},{"text":" "},{"score":{"name":"@s","objective":"wildsBailCountdown"},"color":"#e0e000"}]
execute as @a[scores={wildsBailCountdown=4..5}] if score @s wildsBailCountdown matches ..5 run title @s title ["",{"text":"BAILED OUT IN:","bold":true,"color":"#ff6600"},{"text":" "},{"score":{"name":"@s","objective":"wildsBailCountdown"},"color":"#ff6600"}]
execute as @a[scores={wildsBailCountdown=1..3}] if score @s wildsBailCountdown matches ..5 run title @s title ["",{"text":"BAILED OUT IN:","bold":true,"color":"#8b0000"},{"text":" "},{"score":{"name":"@s","objective":"wildsBailCountdown"},"color":"#8b0000"}]
execute as @a[scores={wildsBailCountdown=6..}] run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ .5 1 1
execute as @a[scores={wildsBailCountdown=..5}] run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ .5 2 1
execute as @a[scores={wildsBailCountdown=1..}] run scoreboard players remove @s wildsBailCountdown 1
execute as @a[scores={wildsBailCountdown=1..}] run schedule function trimabilities:border/bailtimer 1s
