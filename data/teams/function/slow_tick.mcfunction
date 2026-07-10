# Teams maintenance that doesn't need per-tick precision (runs every 10 ticks
# from teams:tick). Team counts, fullness flags, and trigger re-enables.

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

# --- Re-enable triggers (join for teamless, leave/kick for teamed) ---
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
