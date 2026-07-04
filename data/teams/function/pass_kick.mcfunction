# A KICK vote passed: remove the target from the team and announce.
execute if entity @a[tag=kick_target] run tellraw @a[tag=voter] ["",{"selector":"@a[tag=kick_target,limit=1]","bold":true,"color":"red"},{"text":" has been kicked from the team.","color":"yellow"}]
execute as @a[tag=kick_target] run tellraw @s {"text":"You were removed from your team by a vote.","color":"red","bold":true}
execute as @a[tag=kick_target] run team leave @s
execute as @a[tag=kick_target] run scoreboard players set @s has_team 0
