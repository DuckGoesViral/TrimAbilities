# Check if each team exists, if not set existence score to 0
 execute as @a store result score @s aqua_team_count run team list AquaTeam
 execute as @a store result score * gold_team_count run team list GoldTeam
 execute as @a store result score * blue_team_count run team list BlueTeam
 execute as @a store result score * gray_team_count run team list GrayTeam
 execute as @a store result score * green_team_count run team list GreenTeam
 execute as @a store result score * red_team_count run team list RedTeam
 execute as @a store result score * purple_team_count run team list PurpleTeam
 execute as @a store result score * yellow_team_count run team list YellowTeam

# delete team if no players are on it
execute if score * aqua_team_count matches 0 run scoreboard players set * aqua_team_exists 0
execute if score * gold_team_count matches 0 run scoreboard players set * gold_team_exists 0
execute if score * blue_team_count matches 0 run scoreboard players set * blue_team_exists 0
execute if score * gray_team_count matches 0 run scoreboard players set * gray_team_exists 0
execute if score * green_team_count matches 0 run scoreboard players set * green_team_exists 0
execute if score * red_team_count matches 0 run scoreboard players set * red_team_exists 0
execute if score * purple_team_count matches 0 run scoreboard players set * purple_team_exists 0
execute if score * yellow_team_count matches 0 run scoreboard players set * yellow_team_exists 0

# Enable team creation/joining for players without a team
scoreboard players enable @a[scores={has_team=0}] team_aqua
scoreboard players enable @a[scores={has_team=0}] team_gold
scoreboard players enable @a[scores={has_team=0}] team_blue
scoreboard players enable @a[scores={has_team=0}] team_gray
scoreboard players enable @a[scores={has_team=0}] team_green
scoreboard players enable @a[scores={has_team=0}] team_red
scoreboard players enable @a[scores={has_team=0}] team_purple
scoreboard players enable @a[scores={has_team=0}] team_yellow

# sets your team status to joined if you are on a team
execute as @a[team=AquaTeam] run scoreboard players set @s has_team 1
execute as @a[team=GoldTeam] run scoreboard players set @s has_team 1
execute as @a[team=BlueTeam] run scoreboard players set @s has_team 1
execute as @a[team=GrayTeam] run scoreboard players set @s has_team 1
execute as @a[team=GreenTeam] run scoreboard players set @s has_team 1
execute as @a[team=RedTeam] run scoreboard players set @s has_team 1
execute as @a[team=PurpleTeam] run scoreboard players set @s has_team 1
execute as @a[team=YellowTeam] run scoreboard players set @s has_team 1

#enable team invites for players on a team
scoreboard players enable @a[scores={has_team=1}] team_invite

# enable leaving teams for players on a team
scoreboard players enable @a[scores={has_team=1}] leaveteam

# Runs the leave team function if a player runs the trigger
execute as @a[scores={has_team=1,leaveteam=1..}] run function teams:actions/leaveteam

# Runs the confirmation mcfunction if a player runs the confirm trigger
execute as @a[scores={has_team=1..,confirm_leave=1..}] run scoreboard players enable @s confirm
execute as @a[scores={confirm=1..}] run scoreboard players set @s confirm 1

# Leaves player team if they confirm leaving
execute as @a[scores={has_team=1,confirm=1..,confirm_leave=1..}] run tellraw @s {"text":"You have left your team.","color":"red","bold":true}
execute as @a[scores={has_team=1,confirm=1..,confirm_leave=1..}] run team leave @s
execute as @a[scores={confirm=1..,confirm_leave=1..}] run function teams:actions/leftteam
