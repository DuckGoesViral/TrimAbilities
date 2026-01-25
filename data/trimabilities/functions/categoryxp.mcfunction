#Warrior xp
execute as @a[scores={mobKills=1..},tag=mcLvl0,tag=warrior] run scoreboard players add @s warriorLevel 0
execute as @a[scores={mobKills=1..},tag=mcLvl0,tag=warrior] run scoreboard players set @s xpDisplay 0
execute as @a[scores={mobKills=1..},tag=mcLvl1,tag=warrior] run scoreboard players add @s warriorLevel 1
execute as @a[scores={mobKills=1..},tag=mcLvl1,tag=warrior] run scoreboard players set @s xpDisplay 1
execute as @a[scores={mobKills=1..},tag=mcLvl2,tag=warrior] run scoreboard players add @s warriorLevel 1
execute as @a[scores={mobKills=1..},tag=mcLvl2,tag=warrior] run scoreboard players set @s xpDisplay 1
execute as @a[scores={mobKills=1..},tag=mcLvl3,tag=warrior] run scoreboard players add @s warriorLevel 2
execute as @a[scores={mobKills=1..},tag=mcLvl3,tag=warrior] run scoreboard players set @s xpDisplay 2
execute as @a[scores={mobKills=1..},tag=mcLvl4,tag=warrior] run scoreboard players add @s warriorLevel 2
execute as @a[scores={mobKills=1..},tag=mcLvl4,tag=warrior] run scoreboard players set @s xpDisplay 2
execute as @a[scores={mobKills=1..},tag=mcLvl5,tag=warrior] run scoreboard players add @s warriorLevel 3
execute as @a[scores={mobKills=1..},tag=mcLvl5,tag=warrior] run scoreboard players set @s xpDisplay 3
execute as @a[scores={mobKills=1..},tag=mcLvl6,tag=warrior] run scoreboard players add @s warriorLevel 3
execute as @a[scores={mobKills=1..},tag=mcLvl6,tag=warrior] run scoreboard players set @s xpDisplay 3
execute as @a[scores={mobKills=1..},tag=mcLvl7,tag=warrior] run scoreboard players add @s warriorLevel 4
execute as @a[scores={mobKills=1..},tag=mcLvl7,tag=warrior] run scoreboard players set @s xpDisplay 4
execute as @a[scores={mobKills=1..},tag=mcLvl8,tag=warrior] run scoreboard players add @s warriorLevel 4
execute as @a[scores={mobKills=1..},tag=mcLvl8,tag=warrior] run scoreboard players set @s xpDisplay 4
execute as @a[scores={mobKills=1..},tag=mcLvl9,tag=warrior] run scoreboard players add @s warriorLevel 5
execute as @a[scores={mobKills=1..},tag=mcLvl9,tag=warrior] run scoreboard players set @s xpDisplay 5
execute as @a[scores={mobKills=1..},tag=mcLvl10,tag=warrior] run scoreboard players add @s warriorLevel 5
execute as @a[scores={mobKills=1..},tag=mcLvl10,tag=warrior] run scoreboard players set @s xpDisplay 5
execute as @a[scores={mobKills=1..},tag=wLvl0,tag=warrior] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Warrior xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"warriorLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @a[scores={mobKills=1..},tag=wLvl1,tag=warrior] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Warrior xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"warriorLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @a[scores={mobKills=1..},tag=wLvl2,tag=warrior] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Warrior xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"warriorLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @a[scores={mobKills=1..},tag=wLvl3,tag=warrior] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Warrior xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"warriorLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @a[scores={mobKills=1..},tag=wLvl4,tag=warrior] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Warrior xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"warriorLevel"},"color":"dark_aqua"},{"text":" / 10000) ","color":"dark_aqua"}]
execute as @a[scores={mobKills=1..},tag=wLvl5,tag=warrior] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Warrior xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"warriorLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
execute as @a[scores={mobKills=1..},tag=warrior] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 0.5 2
execute as @a[scores={mobKills=1..}] run scoreboard players reset @s mobKills

#Tank xp
execute as @a[scores={damageTaken=25..},tag=mcLvl0,tag=tank] run scoreboard players add @s tankLevel 0
execute as @a[scores={damageTaken=25..},tag=mcLvl0,tag=tank] run scoreboard players set @s xpDisplay 0
execute as @a[scores={damageTaken=25..},tag=mcLvl1,tag=tank] run scoreboard players add @s tankLevel 1
execute as @a[scores={damageTaken=25..},tag=mcLvl1,tag=tank] run scoreboard players set @s xpDisplay 1
execute as @a[scores={damageTaken=25..},tag=mcLvl2,tag=tank] run scoreboard players add @s tankLevel 2
execute as @a[scores={damageTaken=25..},tag=mcLvl2,tag=tank] run scoreboard players set @s xpDisplay 2
execute as @a[scores={damageTaken=25..},tag=mcLvl3,tag=tank] run scoreboard players add @s tankLevel 3
execute as @a[scores={damageTaken=25..},tag=mcLvl3,tag=tank] run scoreboard players set @s xpDisplay 3
execute as @a[scores={damageTaken=25..},tag=mcLvl4,tag=tank] run scoreboard players add @s tankLevel 4
execute as @a[scores={damageTaken=25..},tag=mcLvl4,tag=tank] run scoreboard players set @s xpDisplay 4
execute as @a[scores={damageTaken=25..},tag=mcLvl5,tag=tank] run scoreboard players add @s tankLevel 5
execute as @a[scores={damageTaken=25..},tag=mcLvl5,tag=tank] run scoreboard players set @s xpDisplay 5
execute as @a[scores={damageTaken=25..},tag=mcLvl6,tag=tank] run scoreboard players add @s tankLevel 6
execute as @a[scores={damageTaken=25..},tag=mcLvl6,tag=tank] run scoreboard players set @s xpDisplay 6
execute as @a[scores={damageTaken=25..},tag=mcLvl7,tag=tank] run scoreboard players add @s tankLevel 7
execute as @a[scores={damageTaken=25..},tag=mcLvl7,tag=tank] run scoreboard players set @s xpDisplay 7
execute as @a[scores={damageTaken=25..},tag=mcLvl8,tag=tank] run scoreboard players add @s tankLevel 8
execute as @a[scores={damageTaken=25..},tag=mcLvl8,tag=tank] run scoreboard players set @s xpDisplay 8
execute as @a[scores={damageTaken=25..},tag=mcLvl9,tag=tank] run scoreboard players add @s tankLevel 9
execute as @a[scores={damageTaken=25..},tag=mcLvl9,tag=tank] run scoreboard players set @s xpDisplay 9
execute as @a[scores={damageTaken=25..},tag=mcLvl10,tag=tank] run scoreboard players add @s tankLevel 10
execute as @a[scores={damageTaken=25..},tag=mcLvl10,tag=tank] run scoreboard players set @s xpDisplay 10
execute as @a[scores={damageTaken=25..},tag=tLvl0,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @a[scores={damageTaken=25..},tag=tLvl1,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @a[scores={damageTaken=25..},tag=tLvl2,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @a[scores={damageTaken=25..},tag=tLvl3,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @a[scores={damageTaken=25..},tag=tLvl4,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @a[scores={damageTaken=25..},tag=tLvl5,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
execute as @a[scores={damageTaken=25..},tag=tank] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 0.5 2
execute as @a[scores={damageTaken=25..}] run scoreboard players reset @s damageTanked

execute as @a[scores={damageTanked=10..},tag=mcLvl0,tag=tank] run scoreboard players add @s tankLevel 0
execute as @a[scores={damageTanked=10..},tag=mcLvl0,tag=tank] run scoreboard players set @s xpDisplay 0
execute as @a[scores={damageTanked=10..},tag=mcLvl1,tag=tank] run scoreboard players add @s tankLevel 1
execute as @a[scores={damageTanked=10..},tag=mcLvl1,tag=tank] run scoreboard players set @s xpDisplay 1
execute as @a[scores={damageTanked=10..},tag=mcLvl2,tag=tank] run scoreboard players add @s tankLevel 2
execute as @a[scores={damageTanked=10..},tag=mcLvl2,tag=tank] run scoreboard players set @s xpDisplay 2
execute as @a[scores={damageTanked=10..},tag=mcLvl3,tag=tank] run scoreboard players add @s tankLevel 3
execute as @a[scores={damageTanked=10..},tag=mcLvl3,tag=tank] run scoreboard players set @s xpDisplay 3
execute as @a[scores={damageTanked=10..},tag=mcLvl4,tag=tank] run scoreboard players add @s tankLevel 4
execute as @a[scores={damageTanked=10..},tag=mcLvl4,tag=tank] run scoreboard players set @s xpDisplay 4
execute as @a[scores={damageTanked=10..},tag=mcLvl5,tag=tank] run scoreboard players add @s tankLevel 5
execute as @a[scores={damageTanked=10..},tag=mcLvl5,tag=tank] run scoreboard players set @s xpDisplay 5
execute as @a[scores={damageTanked=10..},tag=mcLvl6,tag=tank] run scoreboard players add @s tankLevel 6
execute as @a[scores={damageTanked=10..},tag=mcLvl6,tag=tank] run scoreboard players set @s xpDisplay 6
execute as @a[scores={damageTanked=10..},tag=mcLvl7,tag=tank] run scoreboard players add @s tankLevel 7
execute as @a[scores={damageTanked=10..},tag=mcLvl7,tag=tank] run scoreboard players set @s xpDisplay 7
execute as @a[scores={damageTanked=10..},tag=mcLvl8,tag=tank] run scoreboard players add @s tankLevel 8
execute as @a[scores={damageTanked=10..},tag=mcLvl8,tag=tank] run scoreboard players set @s xpDisplay 8
execute as @a[scores={damageTanked=10..},tag=mcLvl9,tag=tank] run scoreboard players add @s tankLevel 9
execute as @a[scores={damageTanked=10..},tag=mcLvl9,tag=tank] run scoreboard players set @s xpDisplay 9
execute as @a[scores={damageTanked=10..},tag=mcLvl10,tag=tank] run scoreboard players add @s tankLevel 10
execute as @a[scores={damageTanked=10..},tag=mcLvl10,tag=tank] run scoreboard players set @s xpDisplay 10
execute as @a[scores={damageTanked=10..},tag=tLvl0,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @a[scores={damageTanked=10..},tag=tLvl1,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @a[scores={damageTanked=10..},tag=tLvl2,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @a[scores={damageTanked=10..},tag=tLvl3,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @a[scores={damageTanked=10..},tag=tLvl4,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @a[scores={damageTanked=10..},tag=tLvl5,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
execute as @a[scores={damageTanked=10..},tag=tank] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 0.5 2
execute as @a[scores={damageTanked=10..}] run scoreboard players reset @s damageTanked

execute as @a[scores={damageBlocked=500..},tag=mcLvl0,tag=tank] run scoreboard players add @s tankLevel 0
execute as @a[scores={damageBlocked=500..},tag=mcLvl0,tag=tank] run scoreboard players set @s xpDisplay 0
execute as @a[scores={damageBlocked=500..},tag=mcLvl1,tag=tank] run scoreboard players add @s tankLevel 1
execute as @a[scores={damageBlocked=500..},tag=mcLvl1,tag=tank] run scoreboard players set @s xpDisplay 1
execute as @a[scores={damageBlocked=500..},tag=mcLvl2,tag=tank] run scoreboard players add @s tankLevel 2
execute as @a[scores={damageBlocked=500..},tag=mcLvl2,tag=tank] run scoreboard players set @s xpDisplay 2
execute as @a[scores={damageBlocked=500..},tag=mcLvl3,tag=tank] run scoreboard players add @s tankLevel 3
execute as @a[scores={damageBlocked=500..},tag=mcLvl3,tag=tank] run scoreboard players set @s xpDisplay 3
execute as @a[scores={damageBlocked=500..},tag=mcLvl4,tag=tank] run scoreboard players add @s tankLevel 4
execute as @a[scores={damageBlocked=500..},tag=mcLvl4,tag=tank] run scoreboard players set @s xpDisplay 4
execute as @a[scores={damageBlocked=500..},tag=mcLvl5,tag=tank] run scoreboard players add @s tankLevel 5
execute as @a[scores={damageBlocked=500..},tag=mcLvl5,tag=tank] run scoreboard players set @s xpDisplay 5
execute as @a[scores={damageBlocked=500..},tag=mcLvl6,tag=tank] run scoreboard players add @s tankLevel 6
execute as @a[scores={damageBlocked=500..},tag=mcLvl6,tag=tank] run scoreboard players set @s xpDisplay 6
execute as @a[scores={damageBlocked=500..},tag=mcLvl7,tag=tank] run scoreboard players add @s tankLevel 7
execute as @a[scores={damageBlocked=500..},tag=mcLvl7,tag=tank] run scoreboard players set @s xpDisplay 7
execute as @a[scores={damageBlocked=500..},tag=mcLvl8,tag=tank] run scoreboard players add @s tankLevel 8
execute as @a[scores={damageBlocked=500..},tag=mcLvl8,tag=tank] run scoreboard players set @s xpDisplay 8
execute as @a[scores={damageBlocked=500..},tag=mcLvl9,tag=tank] run scoreboard players add @s tankLevel 9
execute as @a[scores={damageBlocked=500..},tag=mcLvl9,tag=tank] run scoreboard players set @s xpDisplay 9
execute as @a[scores={damageBlocked=500..},tag=mcLvl10,tag=tank] run scoreboard players add @s tankLevel 10
execute as @a[scores={damageBlocked=500..},tag=mcLvl10,tag=tank] run scoreboard players set @s xpDisplay 10
execute as @a[scores={damageBlocked=500..},tag=tLvl0,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @a[scores={damageBlocked=500..},tag=tLvl1,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @a[scores={damageBlocked=500..},tag=tLvl2,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @a[scores={damageBlocked=500..},tag=tLvl3,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @a[scores={damageBlocked=500..},tag=tLvl4,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @a[scores={damageBlocked=500..},tag=tLvl5,tag=tank] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Tank xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"tankLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
execute as @a[scores={damageBlocked=500..},tag=tank] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 0.5 2
execute as @a[scores={damageBlocked=500..}] run scoreboard players reset @s damageBlocked

#Archer xp
execute as @a[nbt={SelectedItem:{id:"minecraft:bow"}}] run tag @s add holdBow
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run tag @s add holdBow
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bow"}},nbt=!{SelectedItem:{id:"minecraft:crossbow"}}] run tag @s remove holdBow

execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl0,tag=archer] run scoreboard players add @s archerLevel 0
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl0,tag=archer] run scoreboard players set @s xpDisplay 0
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl1,tag=archer] run scoreboard players add @s archerLevel 1
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl1,tag=archer] run scoreboard players set @s xpDisplay 1
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl2,tag=archer] run scoreboard players add @s archerLevel 2
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl2,tag=archer] run scoreboard players set @s xpDisplay 2
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl3,tag=archer] run scoreboard players add @s archerLevel 3
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl3,tag=archer] run scoreboard players set @s xpDisplay 3
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl4,tag=archer] run scoreboard players add @s archerLevel 4
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl4,tag=archer] run scoreboard players set @s xpDisplay 4
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl5,tag=archer] run scoreboard players add @s archerLevel 5
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl5,tag=archer] run scoreboard players set @s xpDisplay 5
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl6,tag=archer] run scoreboard players add @s archerLevel 6
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl6,tag=archer] run scoreboard players set @s xpDisplay 6
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl7,tag=archer] run scoreboard players add @s archerLevel 7
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl7,tag=archer] run scoreboard players set @s xpDisplay 7
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl8,tag=archer] run scoreboard players add @s archerLevel 8
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl8,tag=archer] run scoreboard players set @s xpDisplay 8
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl9,tag=archer] run scoreboard players add @s archerLevel 9
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl9,tag=archer] run scoreboard players set @s xpDisplay 9
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl10,tag=archer] run scoreboard players add @s archerLevel 10
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=mcLvl10,tag=archer] run scoreboard players set @s xpDisplay 10
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=aLvl0,tag=archer] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Archer xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"archerLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=aLvl1,tag=archer] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Archer xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"archerLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=aLvl2,tag=archer] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Archer xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"archerLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=aLvl3,tag=archer] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Archer xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"archerLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=aLvl4,tag=archer] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Archer xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"archerLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=aLvl5,tag=archer] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Archer xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"archerLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
execute as @a[scores={BowAttack=1..},tag=holdBow,tag=archer] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 0.5 2
execute as @a[scores={BowAttack=1..}] run scoreboard players reset @s BowAttack




#Mage xp


execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}}] run tag @s add hydrated
execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}}] run tag @s add hydrated
execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:mundane"}}}] run tag @s add hydrated
execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:thick"}}}] run tag @s add hydrated
execute as @a[nbt=!{SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}},nbt=!{SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}},nbt=!{SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:mundane"}}},nbt=!{SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:thick"}}}] run tag @s remove hydrated

execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl0,tag=mage] run scoreboard players add @s mageLevel 0
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl0,tag=mage] run scoreboard players set @s xpDisplay 0
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl1,tag=mage] run scoreboard players add @s mageLevel 2
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl1,tag=mage] run scoreboard players set @s xpDisplay 2
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl2,tag=mage] run scoreboard players add @s mageLevel 4
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl2,tag=mage] run scoreboard players set @s xpDisplay 4
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl3,tag=mage] run scoreboard players add @s mageLevel 6
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl3,tag=mage] run scoreboard players set @s xpDisplay 6
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl4,tag=mage] run scoreboard players add @s mageLevel 8
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl4,tag=mage] run scoreboard players set @s xpDisplay 8
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl5,tag=mage] run scoreboard players add @s mageLevel 10
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl5,tag=mage] run scoreboard players set @s xpDisplay 10
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl6,tag=mage] run scoreboard players add @s mageLevel 12
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl6,tag=mage] run scoreboard players set @s xpDisplay 12
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl7,tag=mage] run scoreboard players add @s mageLevel 14
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl7,tag=mage] run scoreboard players set @s xpDisplay 14
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl8,tag=mage] run scoreboard players add @s mageLevel 16
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl8,tag=mage] run scoreboard players set @s xpDisplay 16
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl9,tag=mage] run scoreboard players add @s mageLevel 18
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl9,tag=mage] run scoreboard players set @s xpDisplay 18
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl10,tag=mage] run scoreboard players add @s mageLevel 20
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mcLvl10,tag=mage] run scoreboard players set @s xpDisplay 20
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mLvl0,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mLvl1,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mLvl2,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mLvl3,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mLvl4,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mLvl5,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
execute as @a[scores={drankPotion=1..},tag=!hydrated,tag=mage] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 0.5 2
execute as @a[scores={drankPotion=1..}] run scoreboard players reset @s drankPotion



execute as @a[scores={enchantItem=1..},tag=mage] run scoreboard players add @s xpDelay 1
execute as @a[scores={enchantItem=1..},tag=mcLvl0,tag=mage] run scoreboard players add @s mageLevel 0
execute as @a[scores={enchantItem=1..},tag=mcLvl0,tag=mage] run scoreboard players set @s xpDisplay 0
execute as @a[scores={enchantItem=1..},tag=mcLvl1,tag=mage] run scoreboard players add @s mageLevel 4
execute as @a[scores={enchantItem=1..},tag=mcLvl1,tag=mage] run scoreboard players set @s xpDisplay 4
execute as @a[scores={enchantItem=1..},tag=mcLvl2,tag=mage] run scoreboard players add @s mageLevel 8
execute as @a[scores={enchantItem=1..},tag=mcLvl2,tag=mage] run scoreboard players set @s xpDisplay 8
execute as @a[scores={enchantItem=1..},tag=mcLvl3,tag=mage] run scoreboard players add @s mageLevel 12
execute as @a[scores={enchantItem=1..},tag=mcLvl3,tag=mage] run scoreboard players set @s xpDisplay 12
execute as @a[scores={enchantItem=1..},tag=mcLvl4,tag=mage] run scoreboard players add @s mageLevel 16
execute as @a[scores={enchantItem=1..},tag=mcLvl4,tag=mage] run scoreboard players set @s xpDisplay 16
execute as @a[scores={enchantItem=1..},tag=mcLvl5,tag=mage] run scoreboard players add @s mageLevel 20
execute as @a[scores={enchantItem=1..},tag=mcLvl5,tag=mage] run scoreboard players set @s xpDisplay 20
execute as @a[scores={enchantItem=1..},tag=mcLvl6,tag=mage] run scoreboard players add @s mageLevel 24
execute as @a[scores={enchantItem=1..},tag=mcLvl6,tag=mage] run scoreboard players set @s xpDisplay 24
execute as @a[scores={enchantItem=1..},tag=mcLvl7,tag=mage] run scoreboard players add @s mageLevel 28
execute as @a[scores={enchantItem=1..},tag=mcLvl7,tag=mage] run scoreboard players set @s xpDisplay 28
execute as @a[scores={enchantItem=1..},tag=mcLvl8,tag=mage] run scoreboard players add @s mageLevel 32
execute as @a[scores={enchantItem=1..},tag=mcLvl8,tag=mage] run scoreboard players set @s xpDisplay 32
execute as @a[scores={enchantItem=1..},tag=mcLvl9,tag=mage] run scoreboard players add @s mageLevel 36
execute as @a[scores={enchantItem=1..},tag=mcLvl9,tag=mage] run scoreboard players set @s xpDisplay 36
execute as @a[scores={enchantItem=1..},tag=mcLvl10,tag=mage] run scoreboard players add @s mageLevel 40
execute as @a[scores={enchantItem=1..},tag=mcLvl10,tag=mage] run scoreboard players set @s xpDisplay 40
execute as @a[scores={enchantItem=1..},tag=mLvl0,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @a[scores={enchantItem=1..},tag=mLvl1,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @a[scores={enchantItem=1..},tag=mLvl2,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @a[scores={enchantItem=1..},tag=mLvl3,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @a[scores={enchantItem=1..},tag=mLvl4,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @a[scores={enchantItem=1..},tag=mLvl5,tag=mage] run title @s actionbar ["",{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"xpDisplay"},"color":"dark_aqua"},{"text":" Mage xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
execute as @a[scores={enchantItem=1..},tag=mage] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 0.5 2
execute as @a[scores={enchantItem=1..}] run scoreboard players reset @s enchantItem


schedule function trimabilities:categoryxp 3t