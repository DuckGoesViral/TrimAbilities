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
team add BlackTeam
team modify BlackTeam color black
team add DarkBlueTeam
team modify DarkBlueTeam color dark_blue
team add DarkGreenTeam
team modify DarkGreenTeam color dark_green
team add DarkAquaTeam
team modify DarkAquaTeam color dark_aqua
team add DarkRedTeam
team modify DarkRedTeam color dark_red
team add DarkPurpleTeam
team modify DarkPurpleTeam color dark_purple
team add DarkGrayTeam
team modify DarkGrayTeam color dark_gray
team add WhiteTeam
team modify WhiteTeam color white

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
scoreboard objectives add join_black trigger
scoreboard objectives add join_darkblue trigger
scoreboard objectives add join_darkgreen trigger
scoreboard objectives add join_darkaqua trigger
scoreboard objectives add join_darkred trigger
scoreboard objectives add join_darkpurple trigger
scoreboard objectives add join_darkgray trigger
scoreboard objectives add join_white trigger

# Live member counts per team (fake player #n holds each count)
scoreboard objectives add aqua_team_count dummy
scoreboard objectives add gold_team_count dummy
scoreboard objectives add blue_team_count dummy
scoreboard objectives add gray_team_count dummy
scoreboard objectives add green_team_count dummy
scoreboard objectives add red_team_count dummy
scoreboard objectives add purple_team_count dummy
scoreboard objectives add yellow_team_count dummy
scoreboard objectives add black_team_count dummy
scoreboard objectives add darkblue_team_count dummy
scoreboard objectives add darkgreen_team_count dummy
scoreboard objectives add darkaqua_team_count dummy
scoreboard objectives add darkred_team_count dummy
scoreboard objectives add darkpurple_team_count dummy
scoreboard objectives add darkgray_team_count dummy
scoreboard objectives add white_team_count dummy

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
scoreboard players set #ticker teamvote 0

# --- Team registry: single source of truth for team-agnostic ability code ---
# TrimAbilities iterates this list. Add a team above AND here to register it everywhere.
data modify storage teams:registry names set value ["AquaTeam","GoldTeam","BlueTeam","GrayTeam","GreenTeam","RedTeam","PurpleTeam","YellowTeam","BlackTeam","DarkBlueTeam","DarkGreenTeam","DarkAquaTeam","DarkRedTeam","DarkPurpleTeam","DarkGrayTeam","WhiteTeam"]

# Populate team counts/fullness immediately (then refreshed every 10t from tick)
function teams:slow_tick
