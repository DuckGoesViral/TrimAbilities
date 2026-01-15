# Check if each team exists, if not set existence score to 0
 execute as @a store result score @s aqua_team_count run team list AquaTeam
 execute as @a store result score @s gold_team_count run team list GoldTeam
 execute as @a store result score @s blue_team_count run team list BlueTeam
 execute as @a store result score @s gray_team_count run team list GrayTeam
 execute as @a store result score @s green_team_count run team list GreenTeam
 execute as @a store result score @s red_team_count run team list RedTeam
 execute as @a store result score @s purple_team_count run team list PurpleTeam
 execute as @a store result score @s yellow_team_count run team list YellowTeam


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
execute as @a[scores={team_aqua=1..}] run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_gold=1..}] run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_blue=1..}] run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_gray=1..}] run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_green=1..}] run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_red=1..}] run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_purple=1..}] run function teams:utility/getuuid with storage teams:macro this
execute as @a[scores={team_yellow=1..}] run function teams:utility/getuuid with storage teams:macro this



execute as @e[tag=Vote_Stand] run scoreboard players add @s vote_timer 1 
execute as @e[tag=Vote_Stand,scores={vote_timer=1728000..}] run kill @s
