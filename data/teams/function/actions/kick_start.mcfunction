# Begin a kick vote. Runs as @s = the kicker. The target carries kick_target_tmp.
tag @a[tag=kick_target_tmp] add kick_target

scoreboard players set #active teamvote 1
scoreboard players set #mode teamvote 2
scoreboard players set #approve teamvote 0
scoreboard players set #disapprove teamvote 0
scoreboard players set #timer teamvote 1200
scoreboard players set #promptcd teamvote 0

# Voters = the kicker's whole team; capture team size.
execute if entity @s[team=AquaTeam] run tag @a[team=AquaTeam] add voter
execute if entity @s[team=AquaTeam] run scoreboard players operation #count teamvote = #n aqua_team_count
execute if entity @s[team=GoldTeam] run tag @a[team=GoldTeam] add voter
execute if entity @s[team=GoldTeam] run scoreboard players operation #count teamvote = #n gold_team_count
execute if entity @s[team=BlueTeam] run tag @a[team=BlueTeam] add voter
execute if entity @s[team=BlueTeam] run scoreboard players operation #count teamvote = #n blue_team_count
execute if entity @s[team=GrayTeam] run tag @a[team=GrayTeam] add voter
execute if entity @s[team=GrayTeam] run scoreboard players operation #count teamvote = #n gray_team_count
execute if entity @s[team=GreenTeam] run tag @a[team=GreenTeam] add voter
execute if entity @s[team=GreenTeam] run scoreboard players operation #count teamvote = #n green_team_count
execute if entity @s[team=RedTeam] run tag @a[team=RedTeam] add voter
execute if entity @s[team=RedTeam] run scoreboard players operation #count teamvote = #n red_team_count
execute if entity @s[team=PurpleTeam] run tag @a[team=PurpleTeam] add voter
execute if entity @s[team=PurpleTeam] run scoreboard players operation #count teamvote = #n purple_team_count
execute if entity @s[team=YellowTeam] run tag @a[team=YellowTeam] add voter
execute if entity @s[team=YellowTeam] run scoreboard players operation #count teamvote = #n yellow_team_count

# The target does not get to vote on their own kick.
execute as @a[tag=kick_target] run tag @s remove voter
scoreboard players remove #count teamvote 1

# Reset and enable the vote triggers for the voters.
scoreboard players set @a[tag=voter] voted 0
scoreboard players set @a[tag=voter] vote_yes 0
scoreboard players set @a[tag=voter] vote_no 0
scoreboard players enable @a[tag=voter] vote_yes
scoreboard players enable @a[tag=voter] vote_no

# The kicker's request counts as their YES vote.
scoreboard players set @s voted 1
scoreboard players add #approve teamvote 1

tellraw @s {"text":"You started a vote to kick a teammate.","color":"yellow"}
