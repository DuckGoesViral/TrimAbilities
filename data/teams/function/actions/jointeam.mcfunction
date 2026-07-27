# Handles a teamless player (@s) triggering join_<color>.
#  - already on it      -> friendly notice
#  - team is empty      -> join directly (nobody to vote)
#  - a vote is running  -> ask them to wait
#  - team has members   -> tag the requester and start a vote
# A team at its max size (maxsize config) rejects new join requests here.

# ---- Max-size gate: cancel requests to full teams the player isn't already on ----
execute if score @s join_aqua matches 1.. unless entity @s[team=AquaTeam] if score #full_aqua teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_aqua matches 1.. unless entity @s[team=AquaTeam] if score #full_aqua teamvote matches 1 run scoreboard players set @s join_aqua 0
execute if score @s join_gold matches 1.. unless entity @s[team=GoldTeam] if score #full_gold teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_gold matches 1.. unless entity @s[team=GoldTeam] if score #full_gold teamvote matches 1 run scoreboard players set @s join_gold 0
execute if score @s join_blue matches 1.. unless entity @s[team=BlueTeam] if score #full_blue teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_blue matches 1.. unless entity @s[team=BlueTeam] if score #full_blue teamvote matches 1 run scoreboard players set @s join_blue 0
execute if score @s join_gray matches 1.. unless entity @s[team=GrayTeam] if score #full_gray teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_gray matches 1.. unless entity @s[team=GrayTeam] if score #full_gray teamvote matches 1 run scoreboard players set @s join_gray 0
execute if score @s join_green matches 1.. unless entity @s[team=GreenTeam] if score #full_green teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_green matches 1.. unless entity @s[team=GreenTeam] if score #full_green teamvote matches 1 run scoreboard players set @s join_green 0
execute if score @s join_red matches 1.. unless entity @s[team=RedTeam] if score #full_red teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_red matches 1.. unless entity @s[team=RedTeam] if score #full_red teamvote matches 1 run scoreboard players set @s join_red 0
execute if score @s join_purple matches 1.. unless entity @s[team=PurpleTeam] if score #full_purple teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_purple matches 1.. unless entity @s[team=PurpleTeam] if score #full_purple teamvote matches 1 run scoreboard players set @s join_purple 0
execute if score @s join_yellow matches 1.. unless entity @s[team=YellowTeam] if score #full_yellow teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_yellow matches 1.. unless entity @s[team=YellowTeam] if score #full_yellow teamvote matches 1 run scoreboard players set @s join_yellow 0
execute if score @s join_black matches 1.. unless entity @s[team=BlackTeam] if score #full_black teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_black matches 1.. unless entity @s[team=BlackTeam] if score #full_black teamvote matches 1 run scoreboard players set @s join_black 0
execute if score @s join_darkblue matches 1.. unless entity @s[team=DarkBlueTeam] if score #full_darkblue teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_darkblue matches 1.. unless entity @s[team=DarkBlueTeam] if score #full_darkblue teamvote matches 1 run scoreboard players set @s join_darkblue 0
execute if score @s join_darkgreen matches 1.. unless entity @s[team=DarkGreenTeam] if score #full_darkgreen teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_darkgreen matches 1.. unless entity @s[team=DarkGreenTeam] if score #full_darkgreen teamvote matches 1 run scoreboard players set @s join_darkgreen 0
execute if score @s join_darkaqua matches 1.. unless entity @s[team=DarkAquaTeam] if score #full_darkaqua teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_darkaqua matches 1.. unless entity @s[team=DarkAquaTeam] if score #full_darkaqua teamvote matches 1 run scoreboard players set @s join_darkaqua 0
execute if score @s join_darkred matches 1.. unless entity @s[team=DarkRedTeam] if score #full_darkred teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_darkred matches 1.. unless entity @s[team=DarkRedTeam] if score #full_darkred teamvote matches 1 run scoreboard players set @s join_darkred 0
execute if score @s join_darkpurple matches 1.. unless entity @s[team=DarkPurpleTeam] if score #full_darkpurple teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_darkpurple matches 1.. unless entity @s[team=DarkPurpleTeam] if score #full_darkpurple teamvote matches 1 run scoreboard players set @s join_darkpurple 0
execute if score @s join_darkgray matches 1.. unless entity @s[team=DarkGrayTeam] if score #full_darkgray teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_darkgray matches 1.. unless entity @s[team=DarkGrayTeam] if score #full_darkgray teamvote matches 1 run scoreboard players set @s join_darkgray 0
execute if score @s join_white matches 1.. unless entity @s[team=WhiteTeam] if score #full_white teamvote matches 1 run tellraw @s {"text":"That team is full.","color":"red"}
execute if score @s join_white matches 1.. unless entity @s[team=WhiteTeam] if score #full_white teamvote matches 1 run scoreboard players set @s join_white 0

# ---- AQUA ----
execute if score @s join_aqua matches 1.. if entity @s[team=AquaTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_aqua matches 1.. unless entity @s[team=AquaTeam] if score #n aqua_team_count matches 0 run team join AquaTeam @s
execute if score @s join_aqua matches 1.. unless entity @s[team=AquaTeam] if score #n aqua_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"aqua"}
execute if score @s join_aqua matches 1.. unless entity @s[team=AquaTeam] if score #n aqua_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_aqua matches 1.. unless entity @s[team=AquaTeam] if score #n aqua_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_aqua
scoreboard players set @s join_aqua 0

# ---- GOLD ----
execute if score @s join_gold matches 1.. if entity @s[team=GoldTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_gold matches 1.. unless entity @s[team=GoldTeam] if score #n gold_team_count matches 0 run team join GoldTeam @s
execute if score @s join_gold matches 1.. unless entity @s[team=GoldTeam] if score #n gold_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"gold"}
execute if score @s join_gold matches 1.. unless entity @s[team=GoldTeam] if score #n gold_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_gold matches 1.. unless entity @s[team=GoldTeam] if score #n gold_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_gold
scoreboard players set @s join_gold 0

# ---- BLUE ----
execute if score @s join_blue matches 1.. if entity @s[team=BlueTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_blue matches 1.. unless entity @s[team=BlueTeam] if score #n blue_team_count matches 0 run team join BlueTeam @s
execute if score @s join_blue matches 1.. unless entity @s[team=BlueTeam] if score #n blue_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"blue"}
execute if score @s join_blue matches 1.. unless entity @s[team=BlueTeam] if score #n blue_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_blue matches 1.. unless entity @s[team=BlueTeam] if score #n blue_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_blue
scoreboard players set @s join_blue 0

# ---- GRAY ----
execute if score @s join_gray matches 1.. if entity @s[team=GrayTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_gray matches 1.. unless entity @s[team=GrayTeam] if score #n gray_team_count matches 0 run team join GrayTeam @s
execute if score @s join_gray matches 1.. unless entity @s[team=GrayTeam] if score #n gray_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"gray"}
execute if score @s join_gray matches 1.. unless entity @s[team=GrayTeam] if score #n gray_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_gray matches 1.. unless entity @s[team=GrayTeam] if score #n gray_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_gray
scoreboard players set @s join_gray 0

# ---- GREEN ----
execute if score @s join_green matches 1.. if entity @s[team=GreenTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_green matches 1.. unless entity @s[team=GreenTeam] if score #n green_team_count matches 0 run team join GreenTeam @s
execute if score @s join_green matches 1.. unless entity @s[team=GreenTeam] if score #n green_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"green"}
execute if score @s join_green matches 1.. unless entity @s[team=GreenTeam] if score #n green_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_green matches 1.. unless entity @s[team=GreenTeam] if score #n green_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_green
scoreboard players set @s join_green 0

# ---- RED ----
execute if score @s join_red matches 1.. if entity @s[team=RedTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_red matches 1.. unless entity @s[team=RedTeam] if score #n red_team_count matches 0 run team join RedTeam @s
execute if score @s join_red matches 1.. unless entity @s[team=RedTeam] if score #n red_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"red"}
execute if score @s join_red matches 1.. unless entity @s[team=RedTeam] if score #n red_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_red matches 1.. unless entity @s[team=RedTeam] if score #n red_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_red
scoreboard players set @s join_red 0

# ---- PURPLE ----
execute if score @s join_purple matches 1.. if entity @s[team=PurpleTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_purple matches 1.. unless entity @s[team=PurpleTeam] if score #n purple_team_count matches 0 run team join PurpleTeam @s
execute if score @s join_purple matches 1.. unless entity @s[team=PurpleTeam] if score #n purple_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"light_purple"}
execute if score @s join_purple matches 1.. unless entity @s[team=PurpleTeam] if score #n purple_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_purple matches 1.. unless entity @s[team=PurpleTeam] if score #n purple_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_purple
scoreboard players set @s join_purple 0

# ---- YELLOW ----
execute if score @s join_yellow matches 1.. if entity @s[team=YellowTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_yellow matches 1.. unless entity @s[team=YellowTeam] if score #n yellow_team_count matches 0 run team join YellowTeam @s
execute if score @s join_yellow matches 1.. unless entity @s[team=YellowTeam] if score #n yellow_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"yellow"}
execute if score @s join_yellow matches 1.. unless entity @s[team=YellowTeam] if score #n yellow_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_yellow matches 1.. unless entity @s[team=YellowTeam] if score #n yellow_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_yellow
scoreboard players set @s join_yellow 0

# ---- BLACK ----
execute if score @s join_black matches 1.. if entity @s[team=BlackTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_black matches 1.. unless entity @s[team=BlackTeam] if score #n black_team_count matches 0 run team join BlackTeam @s
execute if score @s join_black matches 1.. unless entity @s[team=BlackTeam] if score #n black_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"black"}
execute if score @s join_black matches 1.. unless entity @s[team=BlackTeam] if score #n black_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_black matches 1.. unless entity @s[team=BlackTeam] if score #n black_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_black
scoreboard players set @s join_black 0

# ---- DARKBLUE ----
execute if score @s join_darkblue matches 1.. if entity @s[team=DarkBlueTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_darkblue matches 1.. unless entity @s[team=DarkBlueTeam] if score #n darkblue_team_count matches 0 run team join DarkBlueTeam @s
execute if score @s join_darkblue matches 1.. unless entity @s[team=DarkBlueTeam] if score #n darkblue_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"dark_blue"}
execute if score @s join_darkblue matches 1.. unless entity @s[team=DarkBlueTeam] if score #n darkblue_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_darkblue matches 1.. unless entity @s[team=DarkBlueTeam] if score #n darkblue_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_darkblue
scoreboard players set @s join_darkblue 0

# ---- DARKGREEN ----
execute if score @s join_darkgreen matches 1.. if entity @s[team=DarkGreenTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_darkgreen matches 1.. unless entity @s[team=DarkGreenTeam] if score #n darkgreen_team_count matches 0 run team join DarkGreenTeam @s
execute if score @s join_darkgreen matches 1.. unless entity @s[team=DarkGreenTeam] if score #n darkgreen_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"dark_green"}
execute if score @s join_darkgreen matches 1.. unless entity @s[team=DarkGreenTeam] if score #n darkgreen_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_darkgreen matches 1.. unless entity @s[team=DarkGreenTeam] if score #n darkgreen_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_darkgreen
scoreboard players set @s join_darkgreen 0

# ---- DARKAQUA ----
execute if score @s join_darkaqua matches 1.. if entity @s[team=DarkAquaTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_darkaqua matches 1.. unless entity @s[team=DarkAquaTeam] if score #n darkaqua_team_count matches 0 run team join DarkAquaTeam @s
execute if score @s join_darkaqua matches 1.. unless entity @s[team=DarkAquaTeam] if score #n darkaqua_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"dark_aqua"}
execute if score @s join_darkaqua matches 1.. unless entity @s[team=DarkAquaTeam] if score #n darkaqua_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_darkaqua matches 1.. unless entity @s[team=DarkAquaTeam] if score #n darkaqua_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_darkaqua
scoreboard players set @s join_darkaqua 0

# ---- DARKRED ----
execute if score @s join_darkred matches 1.. if entity @s[team=DarkRedTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_darkred matches 1.. unless entity @s[team=DarkRedTeam] if score #n darkred_team_count matches 0 run team join DarkRedTeam @s
execute if score @s join_darkred matches 1.. unless entity @s[team=DarkRedTeam] if score #n darkred_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"dark_red"}
execute if score @s join_darkred matches 1.. unless entity @s[team=DarkRedTeam] if score #n darkred_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_darkred matches 1.. unless entity @s[team=DarkRedTeam] if score #n darkred_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_darkred
scoreboard players set @s join_darkred 0

# ---- DARKPURPLE ----
execute if score @s join_darkpurple matches 1.. if entity @s[team=DarkPurpleTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_darkpurple matches 1.. unless entity @s[team=DarkPurpleTeam] if score #n darkpurple_team_count matches 0 run team join DarkPurpleTeam @s
execute if score @s join_darkpurple matches 1.. unless entity @s[team=DarkPurpleTeam] if score #n darkpurple_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"dark_purple"}
execute if score @s join_darkpurple matches 1.. unless entity @s[team=DarkPurpleTeam] if score #n darkpurple_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_darkpurple matches 1.. unless entity @s[team=DarkPurpleTeam] if score #n darkpurple_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_darkpurple
scoreboard players set @s join_darkpurple 0

# ---- DARKGRAY ----
execute if score @s join_darkgray matches 1.. if entity @s[team=DarkGrayTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_darkgray matches 1.. unless entity @s[team=DarkGrayTeam] if score #n darkgray_team_count matches 0 run team join DarkGrayTeam @s
execute if score @s join_darkgray matches 1.. unless entity @s[team=DarkGrayTeam] if score #n darkgray_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"dark_gray"}
execute if score @s join_darkgray matches 1.. unless entity @s[team=DarkGrayTeam] if score #n darkgray_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_darkgray matches 1.. unless entity @s[team=DarkGrayTeam] if score #n darkgray_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_darkgray
scoreboard players set @s join_darkgray 0

# ---- WHITE ----
execute if score @s join_white matches 1.. if entity @s[team=WhiteTeam] run tellraw @s {"text":"You're already on that team!","color":"yellow"}
execute if score @s join_white matches 1.. unless entity @s[team=WhiteTeam] if score #n white_team_count matches 0 run team join WhiteTeam @s
execute if score @s join_white matches 1.. unless entity @s[team=WhiteTeam] if score #n white_team_count matches 0 run tellraw @s {"text":"You joined the team!","color":"white"}
execute if score @s join_white matches 1.. unless entity @s[team=WhiteTeam] if score #n white_team_count matches 1.. if score #active teamvote matches 1 run tellraw @s {"text":"Another join vote is in progress - try again soon.","color":"red"}
execute if score @s join_white matches 1.. unless entity @s[team=WhiteTeam] if score #n white_team_count matches 1.. if score #active teamvote matches 0 run tag @s add req_white
scoreboard players set @s join_white 0

# If the player was tagged with any req_<color>, start the vote for them
execute if entity @s[tag=req_aqua] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_gold] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_blue] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_gray] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_green] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_red] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_purple] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_yellow] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_black] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_darkblue] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_darkgreen] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_darkaqua] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_darkred] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_darkpurple] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_darkgray] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_white] unless entity @s[tag=vote_requester] run function teams:actions/start
