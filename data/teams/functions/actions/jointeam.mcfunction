


# checks for aqua team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={team_aqua=1..},team=AquaTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"green"}
execute as @a[scores={team_aqua=1..}] unless score * aqua_team_exists matches 1 run function teams:management/create/create_aqua_team
execute as @a[scores={team_aqua=1..}] if score * aqua_team_exists matches 1 run function teams:management/join/join_aqua_team

# Reset the trigger score to allow re-use
scoreboard players set @a[scores={team_aqua=1..}] team_aqua 0

