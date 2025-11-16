execute as @a[scores={progressEye=3..},nbt={Inventory:[{Slot: 103b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 102b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 101b,tag:{Trim:{pattern:"minecraft:eye"}}},{Slot: 100b,tag:{Trim:{pattern:"minecraft:eye"}}}]}] run tag @s add eye
execute if entity @a[tag=eye,tag=!unlockedEye] as @a[tag=eye,tag=!unlockedEye] at @s run function trimabilities:unlocked/eye
execute as @a[tag=eye] run function trimabilities:eyearrow
execute as @a[tag=eye] run effect give @s weakness infinite 1 true


execute as @e[tag=target] unless entity @a[tag=targeting] run tag @s remove target
execute as @a[scores={spyglass=1},tag=eye] run tag @s add targeting
execute as @a[scores={spyglass=1},tag=eye] at @s anchored eyes run function trimabilities:ontarget

scoreboard objectives add goofygoober dummy
execute if entity @e[tag=target] run scoreboard players set Test goofygoober 1
execute unless entity @e[tag=target] run scoreboard players set Test goofygoober 0


execute as @a[advancements={trimabilities:spyglass=true}] run scoreboard players set @s spyglass 1
execute as @a[advancements={trimabilities:spyglass=false}] run scoreboard players set @s spyglass 0
advancement revoke @a only trimabilities:spyglass


execute as @a[tag=targeting] at @s store success score @s targeting run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1]
execute as @e[tag=target] at @s run particle angry_villager ~ ~2 ~ 0 0 0 0 1 normal @a[tag=targeter]

execute as @a[scores={targeting=1,snipeCharge=..619},tag=eye] run scoreboard players add @s snipeCharge 1
execute as @a[scores={snipeCharge=1..}] run title @s times 0 20 0
execute as @a[scores={snipeCharge=1..19}] run title @s title {"text":"Charging","color":"red"}
execute as @a[scores={snipeCharge=20..39}] run title @s title {"text": "30","color": "red"}
execute as @a[scores={snipeCharge=40..59}] run title @s title {"text": "29","color": "red"}
execute as @a[scores={snipeCharge=60..79}] run title @s title {"text": "28","color": "red"}
execute as @a[scores={snipeCharge=80..99}] run title @s title {"text": "27","color": "red"}
execute as @a[scores={snipeCharge=100..119}] run title @s title {"text": "26","color": "red"}
execute as @a[scores={snipeCharge=120..139}] run title @s title {"text": "25","color": "red"}
execute as @a[scores={snipeCharge=140..159}] run title @s title {"text": "24","color": "red"}
execute as @a[scores={snipeCharge=160..179}] run title @s title {"text": "23","color": "red"}
execute as @a[scores={snipeCharge=180..199}] run title @s title {"text": "22","color": "red"}
execute as @a[scores={snipeCharge=200..219}] run title @s title {"text": "21","color": "red"}
execute as @a[scores={snipeCharge=220..239}] run title @s title {"text": "20","color": "red"}
execute as @a[scores={snipeCharge=240..259}] run title @s title {"text": "19","color": "red"}
execute as @a[scores={snipeCharge=260..279}] run title @s title {"text": "18","color": "red"}
execute as @a[scores={snipeCharge=280..299}] run title @s title {"text": "17","color": "red"}
execute as @a[scores={snipeCharge=300..319}] run title @s title {"text": "16","color": "red"}
execute as @a[scores={snipeCharge=320..339}] run title @s title {"text": "15","color": "red"}
execute as @a[scores={snipeCharge=340..359}] run title @s title {"text": "14","color": "red"}
execute as @a[scores={snipeCharge=360..379}] run title @s title {"text": "13","color": "red"}
execute as @a[scores={snipeCharge=380..399}] run title @s title {"text": "12","color": "red"}
execute as @a[scores={snipeCharge=400..419}] run title @s title {"text": "11","color": "red"}
execute as @a[scores={snipeCharge=420..439}] run title @s title {"text": "10","color": "red"}
execute as @a[scores={snipeCharge=440..459}] run title @s title {"text": "9","color": "red"}
execute as @a[scores={snipeCharge=460..479}] run title @s title {"text": "8","color": "red"}
execute as @a[scores={snipeCharge=480..499}] run title @s title {"text": "7","color": "red"}
execute as @a[scores={snipeCharge=500..519}] run title @s title {"text": "6","color": "red"}
execute as @a[scores={snipeCharge=520..539}] run title @s title {"text": "5","color": "red"}
execute as @a[scores={snipeCharge=540..559}] run title @s title {"text": "4","color": "red"}
execute as @a[scores={snipeCharge=560..579}] run title @s title {"text": "3","color": "red"}
execute as @a[scores={snipeCharge=580..599}] run title @s title {"text": "2","color": "red"}
execute as @a[scores={snipeCharge=600..619}] run title @s title {"text": "1","color": "red"}
execute as @a[scores={snipeCharge=620..}] run title @s title {"text": "Armed","color": "red","bold": true}



execute as @a[scores={spyglass=0}] run tag @s remove targeting
execute as @a[scores={spyglass=0}] at @s run function trimabilities:offtarget
execute as @a[scores={spyglass=0}] run scoreboard players reset @s snipeCharge
execute as @a[scores={spyglass=0}] run scoreboard players set @s eyeRange 250

execute as @a[scores={targeting=0}] run scoreboard players set @s snipeCharge 0
execute as @a[scores={targeting=1}] run scoreboard players set @s targeting 0



execute as @a[scores={spyglass=1,snipeCharge=620},tag=eye] run function trimabilities:eyefire
