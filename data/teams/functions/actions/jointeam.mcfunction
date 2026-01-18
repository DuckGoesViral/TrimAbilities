# Enable team invite requesting for players without a team
scoreboard players enable @a[scores={has_team=0,join_aqua=1}] team_aqua
scoreboard players enable @a[scores={has_team=0,join_gold=1}] team_gold
scoreboard players enable @a[scores={has_team=0,join_blue=1}] team_blue
scoreboard players enable @a[scores={has_team=0,join_gray=1}] team_gray
scoreboard players enable @a[scores={has_team=0,join_green=1}] team_green
scoreboard players enable @a[scores={has_team=0,join_red=1}] team_red
scoreboard players enable @a[scores={has_team=0,join_purple=1}] team_purple
scoreboard players enable @a[scores={has_team=0,join_yellow=1}] team_yellow


# checks for aqua team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={join_aqua=1..},team=AquaTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={join_aqua=1..},team=!AquaTeam] if entity @s[team=] if score aqua_team aqua_team_count matches 0 run team join AquaTeam @s
execute as @a[scores={join_aqua=1..}] if score aqua_team aqua_team_count matches 1.. run scoreboard players add @s team_aqua 1

# checks for gold team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={join_gold=1..},team=GoldTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={join_gold=1..},team=!GoldTeam] if entity @s[team=] if score gold_team gold_team_count matches 0 run team join GoldTeam @s
execute as @a[scores={join_gold=1..}] if score gold_team gold_team_count matches 1.. run scoreboard players add @s team_gold 1

# checks for blue team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={join_blue=1..},team=BlueTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={join_blue=1..},team=!BlueTeam] if entity @s[team=] if score blue_team blue_team_count matches 0 run team join BlueTeam @s
execute as @a[scores={join_blue=1..}] if score blue_team blue_team_count matches 1.. run scoreboard players add @s team_blue 1

# checks for gray team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={join_gray=1..},team=GrayTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={join_gray=1..},team=!GrayTeam] if entity @s[team=] if score gray_team gray_team_count matches 0 run team join GrayTeam @s
execute as @a[scores={join_gray=1..}] if score gray_team gray_team_count matches 1.. run scoreboard players add @s team_gray 1

# checks for green team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={join_green=1..},team=GreenTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={join_green=1..},team=!GreenTeam] if entity @s[team=] if score green_team green_team_count matches 0 run team join GreenTeam @s
execute as @a[scores={join_green=1..}] if score green_team green_team_count matches 1.. run scoreboard players add @s team_green 1

# checks for red team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={join_red=1..},team=RedTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={join_red=1..},team=!RedTeam] if entity @s[team=] if score red_team red_team_count matches 0 run team join RedTeam @s
execute as @a[scores={join_red=1..}] if score red_team red_team_count matches 1.. run scoreboard players add @s team_red 1

# checks for purple team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={join_purple=1..},team=PurpleTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={join_purple=1..},team=!PurpleTeam] if entity @s[team=] if score purple_team purple_team_count matches 0 run team join PurpleTeam @s
execute as @a[scores={join_purple=1..}] if score purple_team purple_team_count matches 1.. run scoreboard players add @s team_purple 1

# checks for yellow team, if the team isnt made, create it. If it is made, request to join it.
execute as @a[scores={join_yellow=1..},team=YellowTeam] run tellraw @s {"text":"You are already on this team, silly!","color":"yellow"}
execute as @a[scores={join_yellow=1..},team=!YellowTeam] if entity @s[team=] if score yellow_team yellow_team_count matches 0 run team join YellowTeam @s
execute as @a[scores={join_yellow=1..}] if score yellow_team yellow_team_count matches 1.. run scoreboard players add @s team_yellow 1

# Reset join team scores
scoreboard players set @a join_aqua 0
scoreboard players set @a join_gold 0
scoreboard players set @a join_blue 0
scoreboard players set @a join_gray 0
scoreboard players set @a join_green 0
scoreboard players set @a join_red 0
scoreboard players set @a join_purple 0
scoreboard players set @a join_yellow 0

scoreboard players enable @a[scores={has_team=0}] join_aqua 
scoreboard players enable @a[scores={has_team=0}] join_gold 
scoreboard players enable @a[scores={has_team=0}] join_blue 
scoreboard players enable @a[scores={has_team=0}] join_gray 
scoreboard players enable @a[scores={has_team=0}] join_green 
scoreboard players enable @a[scores={has_team=0}] join_red 
scoreboard players enable @a[scores={has_team=0}] join_purple 
scoreboard players enable @a[scores={has_team=0}] join_yellow 