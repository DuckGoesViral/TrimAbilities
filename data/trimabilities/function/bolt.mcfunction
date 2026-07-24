
execute unless score @s bolt = @s boltOld run attribute @s movement_speed base reset
execute unless score @s bolt = @s boltOld run effect clear @s speed

execute if score @s bolt matches 0 run tag @s remove bolt

execute if score @s bolt matches 1..3 run effect give @s speed infinite 0 true

execute if score @s bolt matches 4 if entity @s[tag=!unlockedBolt] at @s run function trimabilities:unlocked/bolt

#execute if score @s bolt matches 4 if predicate trimabilities:stopped run scoreboard players set @s boltGear 1
execute if score @s bolt matches 4 if score @s boltMS matches 0 run scoreboard players set @s boltSpeed 0

execute if score @s bolt matches 4 if predicate trimabilities:is_sprinting if score @s boltGear matches 1 unless score @s boltSpeed matches 8500.. unless score @s boltWarn matches 5.. run scoreboard players add @s boltSpeed 31
execute if score @s bolt matches 4 if predicate trimabilities:is_sprinting if score @s boltGear matches 2 unless score @s boltSpeed matches 8500.. unless score @s boltWarn matches 5.. run scoreboard players add @s boltSpeed 24
execute if score @s bolt matches 4 if predicate trimabilities:is_sprinting if score @s boltGear matches 3 unless score @s boltSpeed matches 8500.. unless score @s boltWarn matches 5.. run scoreboard players add @s boltSpeed 16
execute if score @s bolt matches 4 if predicate trimabilities:is_sprinting if score @s boltGear matches 4 unless score @s boltSpeed matches 8500.. unless score @s boltWarn matches 5.. run scoreboard players add @s boltSpeed 11
execute if score @s bolt matches 4 if predicate trimabilities:is_sprinting if score @s boltGear matches 5 unless score @s boltSpeed matches 8500.. unless score @s boltWarn matches 5.. run scoreboard players add @s boltSpeed 7
execute if score @s bolt matches 4 if predicate trimabilities:is_sprinting if score @s boltGear matches 6 unless score @s boltSpeed matches 8500.. unless score @s boltWarn matches 5.. run scoreboard players add @s boltSpeed 4
execute if score @s bolt matches 4 if predicate trimabilities:is_sprinting if score @s boltGear matches 7 unless score @s boltSpeed matches 8500.. unless score @s boltWarn matches 5.. run scoreboard players add @s boltSpeed 2
execute if score @s bolt matches 4 if predicate trimabilities:is_sprinting if score @s boltGear matches 8 unless score @s boltSpeed matches 8500.. unless score @s boltWarn matches 5.. run scoreboard players add @s boltSpeed 1

execute if score @s bolt matches 4 unless predicate trimabilities:is_sprinting if score @s boltSpeed matches 1000.. run scoreboard players remove @s boltSpeed 3
execute if score @s bolt matches 4 if score @s boltWarn matches 5.. if score @s boltSpeed matches 1000.. run scoreboard players remove @s boltSpeed 10
execute if score @s bolt matches 4 unless predicate trimabilities:is_sneaking run scoreboard players set @s boltBrake 50
execute if score @s bolt matches 4 if predicate trimabilities:is_sneaking if score @s boltSpeed matches 1000.. run scoreboard players operation @s boltSpeed -= @s boltBrake
execute if score @s bolt matches 4 if predicate trimabilities:is_sneaking run scoreboard players operation @s boltBrake *= 2 constants
execute if score @s bolt matches 4 if score @s boltSpeed matches ..999 run scoreboard players set @s boltSpeed 1000

execute if score @s bolt matches 4 store result score @s boltPitch run data get entity @s Rotation[1]
execute if score @s bolt matches 4 if score @s boltPitch matches 60.. unless score @s boltGear matches 1 run scoreboard players remove @s boltGear 1
execute if score @s bolt matches 4 if score @s boltPitch matches 60.. unless score @s boltGear matches 1 at @s run rotate @s ~ 30.0
execute if score @s bolt matches 4 if score @s boltPitch matches ..-60 unless score @s boltGear matches 8 run scoreboard players add @s boltGear 1
execute if score @s bolt matches 4 if score @s boltPitch matches ..-60 unless score @s boltGear matches 8 at @s run rotate @s ~ -30.0

execute if score @s bolt matches 4 if score @s boltGear matches 1 unless predicate trimabilities:gear1 run scoreboard players add @s boltWarn 1
execute if score @s bolt matches 4 if score @s boltGear matches 2 unless predicate trimabilities:gear2 run scoreboard players add @s boltWarn 1
execute if score @s bolt matches 4 if score @s boltGear matches 3 unless predicate trimabilities:gear3 run scoreboard players add @s boltWarn 1
execute if score @s bolt matches 4 if score @s boltGear matches 4 unless predicate trimabilities:gear4 run scoreboard players add @s boltWarn 1
execute if score @s bolt matches 4 if score @s boltGear matches 5 unless predicate trimabilities:gear5 run scoreboard players add @s boltWarn 1
execute if score @s bolt matches 4 if score @s boltGear matches 6 unless predicate trimabilities:gear6 run scoreboard players add @s boltWarn 1
execute if score @s bolt matches 4 if score @s boltGear matches 7 unless predicate trimabilities:gear7 run scoreboard players add @s boltWarn 1
execute if score @s bolt matches 4 if score @s boltGear matches 8 unless predicate trimabilities:gear8 run scoreboard players add @s boltWarn 1

execute if score @s bolt matches 4 if score @s boltWarn matches 1.. if score @s boltGear matches 1 if predicate trimabilities:gear1 run scoreboard players set @s boltWarn 0
execute if score @s bolt matches 4 if score @s boltWarn matches 1.. if score @s boltGear matches 2 if predicate trimabilities:gear2 run scoreboard players set @s boltWarn 0
execute if score @s bolt matches 4 if score @s boltWarn matches 1.. if score @s boltGear matches 3 if predicate trimabilities:gear3 run scoreboard players set @s boltWarn 0
execute if score @s bolt matches 4 if score @s boltWarn matches 1.. if score @s boltGear matches 4 if predicate trimabilities:gear4 run scoreboard players set @s boltWarn 0
execute if score @s bolt matches 4 if score @s boltWarn matches 1.. if score @s boltGear matches 5 if predicate trimabilities:gear5 run scoreboard players set @s boltWarn 0
execute if score @s bolt matches 4 if score @s boltWarn matches 1.. if score @s boltGear matches 6 if predicate trimabilities:gear6 run scoreboard players set @s boltWarn 0
execute if score @s bolt matches 4 if score @s boltWarn matches 1.. if score @s boltGear matches 7 if predicate trimabilities:gear7 run scoreboard players set @s boltWarn 0
execute if score @s bolt matches 4 if score @s boltWarn matches 1.. if score @s boltGear matches 8 if predicate trimabilities:gear8 run scoreboard players set @s boltWarn 0

execute if score @s bolt matches 4 if score @s boltGear matches 1 run title @s actionbar ["",{"text":"Gear","color":"gold"},{"text":": "},{"text":"","color":"gray"},{"text":"1"},{"text":"2","color":"gray"},{"text":" Speed","color":"gold"},{"text":" (m/s): "},{"score":{"name":"@s","objective":"boltMS"}},{"text":" Fuel ⛽","color":"green"},{"text":": "},{"score":{"name":"@s","objective":"boltFuel"}}]
execute if score @s bolt matches 4 if score @s boltGear matches 2 run title @s actionbar ["",{"text":"Gear","color":"gold"},{"text":": "},{"text":"1","color":"gray"},{"text":"2"},{"text":"3","color":"gray"},{"text":" Speed","color":"gold"},{"text":" (m/s): "},{"score":{"name":"@s","objective":"boltMS"}},{"text":" Fuel ⛽","color":"green"},{"text":": "},{"score":{"name":"@s","objective":"boltFuel"}}]
execute if score @s bolt matches 4 if score @s boltGear matches 3 run title @s actionbar ["",{"text":"Gear","color":"gold"},{"text":": "},{"text":"2","color":"gray"},{"text":"3"},{"text":"4","color":"gray"},{"text":" Speed","color":"gold"},{"text":" (m/s): "},{"score":{"name":"@s","objective":"boltMS"}},{"text":" Fuel ⛽","color":"green"},{"text":": "},{"score":{"name":"@s","objective":"boltFuel"}}]
execute if score @s bolt matches 4 if score @s boltGear matches 4 run title @s actionbar ["",{"text":"Gear","color":"gold"},{"text":": "},{"text":"3","color":"gray"},{"text":"4"},{"text":"5","color":"gray"},{"text":" Speed","color":"gold"},{"text":" (m/s): "},{"score":{"name":"@s","objective":"boltMS"}},{"text":" Fuel ⛽","color":"green"},{"text":": "},{"score":{"name":"@s","objective":"boltFuel"}}]
execute if score @s bolt matches 4 if score @s boltGear matches 5 run title @s actionbar ["",{"text":"Gear","color":"gold"},{"text":": "},{"text":"4","color":"gray"},{"text":"5"},{"text":"6","color":"gray"},{"text":" Speed","color":"gold"},{"text":" (m/s): "},{"score":{"name":"@s","objective":"boltMS"}},{"text":" Fuel ⛽","color":"green"},{"text":": "},{"score":{"name":"@s","objective":"boltFuel"}}]
execute if score @s bolt matches 4 if score @s boltGear matches 6 run title @s actionbar ["",{"text":"Gear","color":"gold"},{"text":": "},{"text":"5","color":"gray"},{"text":"6"},{"text":"7","color":"gray"},{"text":" Speed","color":"gold"},{"text":" (m/s): "},{"score":{"name":"@s","objective":"boltMS"}},{"text":" Fuel ⛽","color":"green"},{"text":": "},{"score":{"name":"@s","objective":"boltFuel"}}]
execute if score @s bolt matches 4 if score @s boltGear matches 7 run title @s actionbar ["",{"text":"Gear","color":"gold"},{"text":": "},{"text":"6","color":"gray"},{"text":"7"},{"text":"8","color":"gray"},{"text":" Speed","color":"gold"},{"text":" (m/s): "},{"score":{"name":"@s","objective":"boltMS"}},{"text":" Fuel ⛽","color":"green"},{"text":": "},{"score":{"name":"@s","objective":"boltFuel"}}]
execute if score @s bolt matches 4 if score @s boltGear matches 8 run title @s actionbar ["",{"text":"Gear","color":"gold"},{"text":": "},{"text":"7","color":"gray"},{"text":"8"},{"text":"","color":"gray"},{"text":" Speed","color":"gold"},{"text":" (m/s): "},{"score":{"name":"@s","objective":"boltMS"}},{"text":" Fuel ⛽","color":"green"},{"text":": "},{"score":{"name":"@s","objective":"boltFuel"}}]

#execute if score @s bolt matches 4 if score @s boltWarn matches 1.. run title @s actionbar ["",{"text":"Warning: ","color":"red"},{"text":"Bolt gear is outside of recommended range!","color":"red"}]
execute if score @s bolt matches 4 if score @s boltWarn matches 1.. run title @s title ["",{"text":"WARNING","color":"red"},{"text":": Shift Gears","color":"gold"}]
execute if score @s bolt matches 4 if score @s boltWarn matches 5.. run damage @s 5 fly_into_wall

execute if score @s bolt matches 4 store result storage trimabilities:bolt speed float 0.0001 run scoreboard players get @s boltSpeed
execute if score @s bolt matches 4 run function trimabilities:boltspeed with storage trimabilities:bolt

execute if score @s bolt matches 4 if predicate trimabilities:stopped if items entity @s weapon.offhand dried_kelp unless score @s boltFuel matches 100.. run scoreboard players add @s boltFuel 1
execute if score @s bolt matches 4 if predicate trimabilities:stopped if items entity @s weapon.offhand dried_kelp unless score @s boltFuel matches 100.. run clear @s dried_kelp 1

execute if score @s bolt matches 4 if score @s boltFood matches ..7 if score @s boltFuel matches 1.. run effect give @s saturation 1 0 true
execute if score @s bolt matches 4 if score @s boltFood matches ..7 if score @s boltFuel matches 1.. run scoreboard players remove @s boltFuel 1

execute if score @s bolt matches 4 if predicate trimabilities:is_sneaking if score @s boltFuel matches 1.. unless score @s boltFood matches 20.. run effect give @s saturation 1 0 true
execute if score @s bolt matches 4 if predicate trimabilities:is_sneaking if score @s boltFuel matches 1.. unless score @s boltFood matches 20.. run scoreboard players remove @s boltFuel 1

scoreboard players operation @s boltOld = @s bolt


