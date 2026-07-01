# Begin a join vote. Runs as @s = the requesting (teamless) player,
# who already carries exactly one req_<color> tag set by jointeam.

tag @s add vote_requester
scoreboard players set #active teamvote 1
scoreboard players set #mode teamvote 1
scoreboard players set #approve teamvote 0
scoreboard players set #disapprove teamvote 0
scoreboard players set #timer teamvote 1200
scoreboard players set #promptcd teamvote 0

# Tag every member of the target team as a voter and capture the team size.
execute if entity @s[tag=req_aqua] run scoreboard players operation #count teamvote = #n aqua_team_count
execute if entity @s[tag=req_aqua] run tag @a[team=AquaTeam] add voter
execute if entity @s[tag=req_gold] run scoreboard players operation #count teamvote = #n gold_team_count
execute if entity @s[tag=req_gold] run tag @a[team=GoldTeam] add voter
execute if entity @s[tag=req_blue] run scoreboard players operation #count teamvote = #n blue_team_count
execute if entity @s[tag=req_blue] run tag @a[team=BlueTeam] add voter
execute if entity @s[tag=req_gray] run scoreboard players operation #count teamvote = #n gray_team_count
execute if entity @s[tag=req_gray] run tag @a[team=GrayTeam] add voter
execute if entity @s[tag=req_green] run scoreboard players operation #count teamvote = #n green_team_count
execute if entity @s[tag=req_green] run tag @a[team=GreenTeam] add voter
execute if entity @s[tag=req_red] run scoreboard players operation #count teamvote = #n red_team_count
execute if entity @s[tag=req_red] run tag @a[team=RedTeam] add voter
execute if entity @s[tag=req_purple] run scoreboard players operation #count teamvote = #n purple_team_count
execute if entity @s[tag=req_purple] run tag @a[team=PurpleTeam] add voter
execute if entity @s[tag=req_yellow] run scoreboard players operation #count teamvote = #n yellow_team_count
execute if entity @s[tag=req_yellow] run tag @a[team=YellowTeam] add voter

# Reset and enable the vote triggers for everyone tagged as a voter.
scoreboard players set @a[tag=voter] voted 0
scoreboard players set @a[tag=voter] vote_yes 0
scoreboard players set @a[tag=voter] vote_no 0
scoreboard players enable @a[tag=voter] vote_yes
scoreboard players enable @a[tag=voter] vote_no

tellraw @s {"text":"Your request has been sent to the team. Awaiting their vote...","color":"green"}
