# Check if each team exists, if not set existence score to 0
 execute as @a store result score @s aqua_team_count run team list AquaTeam
 execute as @a store result score @s gold_team_count run team list GoldTeam
 execute as @a store result score @s blue_team_count run team list BlueTeam
 execute as @a store result score @s gray_team_count run team list GrayTeam
 execute as @a store result score @s green_team_count run team list GreenTeam
 execute as @a store result score @s red_team_count run team list RedTeam
 execute as @a store result score @s purple_team_count run team list PurpleTeam
 execute as @a store result score @s yellow_team_count run team list YellowTeam

# Creates the threshold for the number of players required to accept team join requests
execute as aqua_team store result score @s aqua_team_threshold run team list AquaTeam
execute as gold_team store result score @s gold_team_threshold run team list GoldTeam
execute as blue_team store result score @s blue_team_threshold run team list BlueTeam
execute as gray_team store result score @s gray_team_threshold run team list GrayTeam
execute as green_team store result score @s green_team_threshold run team list GreenTeam
execute as red_team store result score @s red_team_threshold run team list RedTeam
execute as purple_team store result score @s purple_team_threshold run team list PurpleTeam
execute as yellow_team store result score @s yellow_team_threshold run team list YellowTeam

# Divide total count of players on team by 2 to get threshold
scoreboard players operation aqua_team aqua_team_threshold /= two 2
scoreboard players operation gold_team gold_team_threshold = two 2
scoreboard players operation blue_team blue_team_threshold = two 2
scoreboard players operation gray_team gray_team_threshold = two 2
scoreboard players operation green_team green_team_threshold = two 2
scoreboard players operation red_team red_team_threshold = two 2
scoreboard players operation purple_team purple_team_threshold = two 2
scoreboard players operation yellow_team yellow_team_threshold = two 2

# Get the name and store it of each player that joins
execute as @a[scores={registered=0}] run function teams:utility/register

# Enable joining teams for players without a team
scoreboard players enable @a[scores={has_team=0}] join_aqua
scoreboard players enable @a[scores={has_team=0}] join_gold
scoreboard players enable @a[scores={has_team=0}] join_blue
scoreboard players enable @a[scores={has_team=0}] join_gray
scoreboard players enable @a[scores={has_team=0}] join_green
scoreboard players enable @a[scores={has_team=0}] join_red
scoreboard players enable @a[scores={has_team=0}] join_purple
scoreboard players enable @a[scores={has_team=0}] join_yellow

# enable leaving teams for players on a team
scoreboard players enable @a[scores={has_team=1}] leaveteam

# Runs the leave team function if a player runs the trigger
execute as @a[scores={has_team=1,leaveteam=1..}] run function teams:actions/leaveteam

# Runs the confirmation mcfunction if a player runs the confirm trigger
execute as @a[scores={has_team=1..,confirm_leave=1..}] run scoreboard players enable @s confirm
execute as @a[scores={confirm=1..}] run scoreboard players set @s confirm 1

# Leaves player team if they confirm leaving
execute at @a[scores={has_team=1,confirm=1..,confirm_leave=1..},team=AquaTeam] run tellraw @a[team=AquaTeam] {"text":"","extra":[{"selector":"@p","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]}
execute at @a[scores={has_team=1,confirm=1..,confirm_leave=1..},team=GoldTeam] run tellraw @a[team=GoldTeam] {"text":"","extra":[{"selector":"@p","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]}
execute at @a[scores={has_team=1,confirm=1..,confirm_leave=1..},team=BlueTeam] run tellraw @a[team=BlueTeam] {"text":"","extra":[{"selector":"@p","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]}
execute at @a[scores={has_team=1,confirm=1..,confirm_leave=1..},team=GrayTeam] run tellraw @a[team=GrayTeam] {"text":"","extra":[{"selector":"@p","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]}
execute at @a[scores={has_team=1,confirm=1..,confirm_leave=1..},team=GreenTeam] run tellraw @a[team=GreenTeam] {"text":"","extra":[{"selector":"@p","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]}
execute at @a[scores={has_team=1,confirm=1..,confirm_leave=1..},team=RedTeam] run tellraw @a[team=RedTeam] {"text":"","extra":[{"selector":"@p","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]}
execute at @a[scores={has_team=1,confirm=1..,confirm_leave=1..},team=PurpleTeam] run tellraw @a[team=PurpleTeam] {"text":"","extra":[{"selector":"@p","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]}
execute at @a[scores={has_team=1,confirm=1..,confirm_leave=1..},team=YellowTeam] run tellraw @a[team=YellowTeam] {"text":"","extra":[{"selector":"@p","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]}
execute as @a[scores={has_team=1,confirm=1..,confirm_leave=1..}] run tellraw @s {"text":"You have left your team.","color":"red","bold":true}
#Handle the scoreboard cleanup after leaving team
execute as @a[scores={confirm=1..,confirm_leave=1..}] run function teams:actions/leftteam

# Actually remove the player from the team
execute as @a[scores={has_team=1,confirm=1..,confirm_leave=1..}] run team leave @s

# Check if a player triggers the team creation/joining triggers
execute as @a[scores={team_aqua=1..}] if score @s aqua_team_count matches 1.. run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_gold=1..}] if score @s gold_team_count matches 1.. run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_blue=1..}] if score @s blue_team_count matches 1.. run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_gray=1..}] if score @s gray_team_count matches 1.. run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_green=1..}] if score @s green_team_count matches 1.. run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_red=1..}] if score @s red_team_count matches 1.. run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_purple=1..}] if score @s purple_team_count matches 1.. run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_yellow=1..}] if score @s yellow_team_count matches 1.. run function teams:utility/getuuid with storage teams:macro this

#Add 1 to the vote and reminder timers for each tick
execute as @e[tag=Vote_Stand] run scoreboard players add @s vote_timer 1 
execute as @e[tag=Vote_Stand] run scoreboard players add @s reminder_timer 1 
# Remove vote after 24 hours (1728000 ticks)
execute as @e[tag=Vote_Stand,scores={vote_timer=1728000..}] run kill @s

# Remind players to vote every 15 Minutes (18000 ticks)
execute as @a[tag=Vote_Stand,scores={reminder_timer=18000}] run function teams:utility/vote_remind with storage teams:macro this

# Checks to see if anyone has voted since last tick
execute as @e[type=armor_stand,tag=Vote_Stand] run function teams:utility/checkvotes with storage teams:macro this

execute as @a[team=] run scoreboard players set @s has_team 0
execute as @a[team=!] run scoreboard players set @s has_team 1

# Handle the join team trigger
execute as @a[scores={join_aqua=1..}] run function teams:actions/jointeam
execute as @a[scores={join_gold=1..}] run function teams:actions/jointeam
execute as @a[scores={join_blue=1..}] run function teams:actions/jointeam
execute as @a[scores={join_gray=1..}] run function teams:actions/jointeam
execute as @a[scores={join_green=1..}] run function teams:actions/jointeam
execute as @a[scores={join_red=1..}] run function teams:actions/jointeam
execute as @a[scores={join_purple=1..}] run function teams:actions/jointeam
execute as @a[scores={join_yellow=1..}] run function teams:actions/jointeam