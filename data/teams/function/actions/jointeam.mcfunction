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

# If the player was tagged with any req_<color>, start the vote for them
execute if entity @s[tag=req_aqua] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_gold] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_blue] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_gray] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_green] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_red] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_purple] unless entity @s[tag=vote_requester] run function teams:actions/start
execute if entity @s[tag=req_yellow] unless entity @s[tag=vote_requester] run function teams:actions/start
