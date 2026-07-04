# ============================================================
#  TEAMS tick - membership, trigger enabling, join + leave, vote
# ============================================================

# --- Update each player's has_team flag ---
scoreboard players set @a has_team 1
execute as @a[team=] run scoreboard players set @s has_team 0

# --- Give one new player a unique id per tick (used for kick targeting) ---
execute as @a[tag=!has_id,limit=1] run function teams:assign_id

# --- Refresh live team member counts (fake player #n) ---
execute store result score #n aqua_team_count run team list AquaTeam
execute store result score #n gold_team_count run team list GoldTeam
execute store result score #n blue_team_count run team list BlueTeam
execute store result score #n gray_team_count run team list GrayTeam
execute store result score #n green_team_count run team list GreenTeam
execute store result score #n red_team_count run team list RedTeam
execute store result score #n purple_team_count run team list PurpleTeam
execute store result score #n yellow_team_count run team list YellowTeam

# --- Team fullness for the max-size limit (maxsize config; 0 = unlimited) ---
scoreboard players set #full_aqua teamvote 0
scoreboard players set #full_gold teamvote 0
scoreboard players set #full_blue teamvote 0
scoreboard players set #full_gray teamvote 0
scoreboard players set #full_green teamvote 0
scoreboard players set #full_red teamvote 0
scoreboard players set #full_purple teamvote 0
scoreboard players set #full_yellow teamvote 0
execute if score maxsize config matches 1.. if score #n aqua_team_count >= maxsize config run scoreboard players set #full_aqua teamvote 1
execute if score maxsize config matches 1.. if score #n gold_team_count >= maxsize config run scoreboard players set #full_gold teamvote 1
execute if score maxsize config matches 1.. if score #n blue_team_count >= maxsize config run scoreboard players set #full_blue teamvote 1
execute if score maxsize config matches 1.. if score #n gray_team_count >= maxsize config run scoreboard players set #full_gray teamvote 1
execute if score maxsize config matches 1.. if score #n green_team_count >= maxsize config run scoreboard players set #full_green teamvote 1
execute if score maxsize config matches 1.. if score #n red_team_count >= maxsize config run scoreboard players set #full_red teamvote 1
execute if score maxsize config matches 1.. if score #n purple_team_count >= maxsize config run scoreboard players set #full_purple teamvote 1
execute if score maxsize config matches 1.. if score #n yellow_team_count >= maxsize config run scoreboard players set #full_yellow teamvote 1

# --- Enable join triggers for teamless players, leave trigger for teamed players ---
scoreboard players enable @a[scores={has_team=0}] join_aqua
scoreboard players enable @a[scores={has_team=0}] join_gold
scoreboard players enable @a[scores={has_team=0}] join_blue
scoreboard players enable @a[scores={has_team=0}] join_gray
scoreboard players enable @a[scores={has_team=0}] join_green
scoreboard players enable @a[scores={has_team=0}] join_red
scoreboard players enable @a[scores={has_team=0}] join_purple
scoreboard players enable @a[scores={has_team=0}] join_yellow
scoreboard players enable @a[scores={has_team=1}] leaveteam
scoreboard players enable @a[scores={has_team=1}] kickmenu
scoreboard players enable @a[scores={has_team=1}] votekick

# --- Leave-team flow ---
execute as @a[scores={has_team=1,leaveteam=1..}] run function teams:actions/leaveteam
execute as @a[scores={confirm_leave=1..}] run scoreboard players enable @s confirm
execute as @a[scores={has_team=1,confirm_leave=1..,confirm=1..}] run function teams:actions/leftteam

# --- Join requests (triggers are only enabled for teamless players) ---
execute as @a[scores={join_aqua=1..}] run function teams:actions/jointeam
execute as @a[scores={join_gold=1..}] run function teams:actions/jointeam
execute as @a[scores={join_blue=1..}] run function teams:actions/jointeam
execute as @a[scores={join_gray=1..}] run function teams:actions/jointeam
execute as @a[scores={join_green=1..}] run function teams:actions/jointeam
execute as @a[scores={join_red=1..}] run function teams:actions/jointeam
execute as @a[scores={join_purple=1..}] run function teams:actions/jointeam
execute as @a[scores={join_yellow=1..}] run function teams:actions/jointeam

# --- Kick: open the menu, or start a kick vote against a chosen teammate ---
execute as @a[scores={kickmenu=1..}] run function teams:kickmenu
execute as @a[scores={votekick=1..}] run function teams:actions/kick_request

# --- Run the active vote (join or kick), if one is in progress ---
execute if score #active teamvote matches 1 run function teams:vote
