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

# Creates a team for the player if the doesn't already exist. 
scoreboard objectives add team_gold trigger
scoreboard objectives add team_gray trigger
scoreboard objectives add team_blue trigger
scoreboard objectives add team_green trigger
scoreboard objectives add team_aqua trigger
scoreboard objectives add team_red trigger
scoreboard objectives add team_purple trigger
scoreboard objectives add team_yellow trigger

# Joins another player's team 
scoreboard objectives add jointeam trigger

# Sends a team invite to the player standing in front of the triggering player
scoreboard objectives add team_invite trigger

# Holds the player counts of all teams. 
scoreboard objectives add gold_team_count dummy
scoreboard objectives add gray_team_count dummy
scoreboard objectives add blue_team_count dummy
scoreboard objectives add green_team_count dummy
scoreboard objectives add aqua_team_count dummy
scoreboard objectives add red_team_count dummy
scoreboard objectives add purple_team_count dummy
scoreboard objectives add yellow_team_count dummy

# Handles invite requests for players who want to join a team via invite
scoreboard objectives add approval_count dummy

# Handles leaving a team
scoreboard objectives add leaveteam trigger

# Allows players to confirm various actions
scoreboard objectives add confirm trigger

# Confirmation for leaving a team
scoreboard objectives add confirm_leave dummy

# handles confirmations of various checks
scoreboard objectives add confirmed dummy


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
scoreboard objectives add aqua_approve_count dummy
scoreboard objectives add aqua_disapprove_count dummy

scoreboard objectives add gold_approve_count dummy
scoreboard objectives add gold_disapprove_count dummy

scoreboard objectives add blue_approve_count dummy
scoreboard objectives add blue_disapprove_count dummy

scoreboard objectives add gray_approve_count dummy
scoreboard objectives add gray_disapprove_count dummy

scoreboard objectives add green_approve_count dummy
scoreboard objectives add green_disapprove_count dummy

scoreboard objectives add red_approve_count dummy
scoreboard objectives add red_disapprove_count dummy

scoreboard objectives add purple_approve_count dummy
scoreboard objectives add purple_disapprove_count dummy

scoreboard objectives add yellow_approve_count dummy
scoreboard objectives add yellow_disapprove_count dummy

# Timer to limit voting duration
scoreboard objectives add vote_timer dummy