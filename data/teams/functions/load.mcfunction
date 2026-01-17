# creates teams if they do not already exist.
team add AquaTeam
team modify AquaTeam color aqua
team add GoldTeam
team modify GoldTeam color gold
team add BlueTeam
team modify BlueTeam color blue
team add GrayTeam
team modify GrayTeam color gray
team add GreenTeam
team modify GreenTeam color green
team add RedTeam
team modify RedTeam color red
team add PurpleTeam
team modify PurpleTeam color light_purple
team add YellowTeam
team modify YellowTeam color yellow

# Whether a player has a team assigned to them
scoreboard objectives add has_team dummy

# The color of the player's team
scoreboard objectives add team_color dummy

# allows a player to request to join a team if the team already exists. 
scoreboard objectives add team_gold trigger
scoreboard objectives add team_gray trigger
scoreboard objectives add team_blue trigger
scoreboard objectives add team_green trigger
scoreboard objectives add team_aqua trigger
scoreboard objectives add team_red trigger
scoreboard objectives add team_purple trigger
scoreboard objectives add team_yellow trigger

# Allows a player to go to other teams, including creating the team if it doesnt exist.
scoreboard objectives add join_aqua trigger
scoreboard objectives add join_gold trigger
scoreboard objectives add join_blue trigger
scoreboard objectives add join_gray trigger
scoreboard objectives add join_green trigger
scoreboard objectives add join_red trigger
scoreboard objectives add join_purple trigger
scoreboard objectives add join_yellow trigger

# Holds the player counts of all teams. 
scoreboard objectives add gold_team_count dummy
scoreboard objectives add gray_team_count dummy
scoreboard objectives add blue_team_count dummy
scoreboard objectives add green_team_count dummy
scoreboard objectives add aqua_team_count dummy
scoreboard objectives add red_team_count dummy
scoreboard objectives add purple_team_count dummy
scoreboard objectives add yellow_team_count dummy

# Threshold for number of players required to accept team invite requests
scoreboard objectives add aqua_team_threshold dummy
scoreboard objectives add gold_team_threshold dummy
scoreboard objectives add blue_team_threshold dummy
scoreboard objectives add gray_team_threshold dummy
scoreboard objectives add green_team_threshold dummy
scoreboard objectives add red_team_threshold dummy
scoreboard objectives add purple_team_threshold dummy
scoreboard objectives add yellow_team_threshold dummy


# Handles leaving a team
scoreboard objectives add leaveteam trigger

# Allows players to confirm various actions
scoreboard objectives add confirm trigger

# Confirmation for leaving a team
scoreboard objectives add confirm_leave dummy

# handles confirmations of various checks
scoreboard objectives add confirmed dummy

# Check for if a player has been registered
scoreboard objectives add registered dummy
scoreboard objectives add registration_check dummy

# Tracks requests to join a team
scoreboard objectives add aqua_request dummy
scoreboard objectives add gold_request dummy
scoreboard objectives add blue_request dummy
scoreboard objectives add gray_request dummy
scoreboard objectives add green_request dummy
scoreboard objectives add red_request dummy
scoreboard objectives add purple_request dummy
scoreboard objectives add yellow_request dummy

# Tracks approval and disapproval counts for team join requests


# Timer to limit voting duration
scoreboard objectives add vote_timer dummy
scoreboard objectives add reminder_timer dummy

scoreboard objectives add 2 dummy
scoreboard players set two 2 2

