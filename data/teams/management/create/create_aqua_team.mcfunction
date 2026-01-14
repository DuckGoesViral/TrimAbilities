# handles the creation of the aqua team
execute if score * aqua_team_exists matches 0 run scoreboard players set * aqua_team_exists 1
execute as @a[scores={team_aqua=1..}] run team join AquaTeam @s
execute as @a[scores={team_aqua=1..}] run tellraw @s {"text":"You have joined the Aqua Team!","color":"green","bold":true}
execute as @a[scores={team_aqua=1..}] run scoreboard players set @s has_team 1
execute as @a[scores={team_aqua=1..}] run scoreboard players set @s team_aqua 0