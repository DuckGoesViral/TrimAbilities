


# checks for aqua team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={team_aqua=1..},team=AquaTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={team_aqua=1..},team=!AquaTeam] if score @s aqua_team_count matches 0 run team leave @s
execute as @a[scores={team_aqua=1..},team=!AquaTeam] if score @s aqua_team_count matches 0 run team join AquaTeam @s
execute as @a[scores={team_aqua=1..}] if score @s aqua_team_count matches 1.. run scoreboard players add @s aqua_request 1
execute as @a[scores={team_aqua=1..}] if score @s aqua_team_count matches 1.. run tellraw @a[team=AquaTeam] {"text":"","extra":[{"selector":"@s","bold":true,"color":"green"},{"text":" would like to join your team! Type ","color":"yellow"},{"text":"/trigger jointeam set 1","color":"aqua","bold":true},{"text":" to approve.","color":"yellow"}]}


# Reset the trigger score to allow re-use
scoreboard players set @a[scores={team_aqua=1..}] team_aqua 0
scoreboard players set @a[scores={team_gold=1..}] team_gold 0
scoreboard players set @a[scores={team_blue=1..}] team_blue 0
scoreboard players set @a[scores={team_gray=1..}] team_gray 0
scoreboard players set @a[scores={team_green=1..}] team_green 0
scoreboard players set @a[scores={team_red=1..}] team_red 0
scoreboard players set @a[scores={team_purple=1..}] team_purple 0
scoreboard players set @a[scores={team_yellow=1..}] team_yellow 0

