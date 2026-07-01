# ============================================================
#  TEAMS - join-by-vote system (rebuilt for 1.21.11)
#  Players request to join an existing team; current members
#  vote [Approve]/[Reject]. One active vote at a time.
# ============================================================

# Create the eight colored teams if they don't already exist
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

# Whether a player is currently on a team (0 = no, 1 = yes)
scoreboard objectives add has_team dummy

# Per-player triggers used to request joining a team
scoreboard objectives add join_aqua trigger
scoreboard objectives add join_gold trigger
scoreboard objectives add join_blue trigger
scoreboard objectives add join_gray trigger
scoreboard objectives add join_green trigger
scoreboard objectives add join_red trigger
scoreboard objectives add join_purple trigger
scoreboard objectives add join_yellow trigger

# Live member counts per team (fake player #n holds each count)
scoreboard objectives add aqua_team_count dummy
scoreboard objectives add gold_team_count dummy
scoreboard objectives add blue_team_count dummy
scoreboard objectives add gray_team_count dummy
scoreboard objectives add green_team_count dummy
scoreboard objectives add red_team_count dummy
scoreboard objectives add purple_team_count dummy
scoreboard objectives add yellow_team_count dummy

# Voting on the single active join/kick request
scoreboard objectives add vote_yes trigger
scoreboard objectives add vote_no trigger
scoreboard objectives add voted dummy

# Kicking: open the menu, then target a teammate by their id
scoreboard objectives add kickmenu trigger
scoreboard objectives add votekick trigger
scoreboard objectives add player_id dummy

# Leaving a team
scoreboard objectives add leaveteam trigger
scoreboard objectives add confirm trigger
scoreboard objectives add confirm_leave dummy

# Operator config (set by ops via /scoreboard players set):
#   maxsize config <n>   -> maximum players allowed per team (0 = unlimited)
scoreboard objectives add config dummy
scoreboard objectives modify config displayname {"text":"Teams Config (ops)"}
execute unless score maxsize config matches 0.. run scoreboard players set maxsize config 0
execute unless score #idcounter config matches 0.. run scoreboard players set #idcounter config 0

# Shared state for the active vote (all values are fake players on this objective)
#   #active     1 while a vote is running
#   #approve    running yes tally
#   #disapprove running no tally
#   #threshold  votes needed to pass (ceil(count/2))
#   #count      member count of the target team
#   #timer      ticks remaining before the vote times out
#   #promptcd   ticks until voters are reminded again
#   #two        constant 2, used for the threshold division
scoreboard objectives add teamvote dummy
scoreboard players set #active teamvote 0
scoreboard players set #mode teamvote 1
scoreboard players set #two teamvote 2
