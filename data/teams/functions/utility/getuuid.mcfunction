# resets the vote tracking for the team. 

$scoreboard objectives add voted_$(Name) dummy

# Handles the request to join the Aqua team
$execute if entity @a[scores={team_aqua=1..}] run scoreboard players reset @a[team=AquaTeam] voted_$(Name)
$execute as @e[tag=$(Name)_team_aqua_stand] if entity @a[scores={team_aqua=1..}] run scoreboard objectives remove $(Name)_team_aqua_approves
$execute as @e[tag=$(Name)_team_aqua_stand] if entity @a[scores={team_aqua=1..}] run kill @s
$execute as @a[scores={team_aqua=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_aqua_stand","Vote_Stand","aqua"]}
$execute as @a[tag=$(Name)_team_aqua_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_aqua_stand] run scoreboard objectives add $(Name)_team_aqua_approves trigger
$execute as @e[tag=$(Name)_team_aqua_stand] run scoreboard objectives add $(Name)_team_aqua_disapproves trigger
$scoreboard players enable @a[team=AquaTeam] $(Name)_team_aqua_approves
$scoreboard players enable @a[team=AquaTeam] $(Name)_team_aqua_disapproves
$execute as @e[tag=$(Name)_team_aqua_stand] run data modify storage teams:macro this.Name set value $(Name)

scoreboard players set @a[scores={team_aqua=1..}] team_aqua 0

# Handles the request to join the Gold team
$execute if entity @a[scores={team_gold=1..}] run scoreboard players reset @a[team=GoldTeam] voted_$(Name)
$execute as @e[tag=$(Name)_team_gold_stand] if entity @a[scores={team_gold=1..}] run scoreboard objectives remove $(Name)_team_gold_approves
$execute as @e[tag=$(Name)_team_gold_stand] if entity @a[scores={team_gold=1..}] run kill @s
$execute as @a[scores={team_gold=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_gold_stand","Vote_Stand","gold"]}
$execute as @a[tag=$(Name)_team_gold_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_gold_stand] run scoreboard objectives add $(Name)_team_gold_approves trigger
$execute as @e[tag=$(Name)_team_gold_stand] run scoreboard objectives add $(Name)_team_gold_disapproves trigger
$scoreboard players enable @a[team=GoldTeam] $(Name)_team_gold_approves
$scoreboard players enable @a[team=GoldTeam] $(Name)_team_gold_disapproves
$execute as @e[tag=$(Name)_team_gold_stand] run data modify storage teams:macro this.Name set value $(Name)

scoreboard players set @a[scores={team_gold=1..}] team_gold 0

# Handles the request to join the Blue team
$execute if entity @a[scores={team_blue=1..}] run scoreboard players reset @a[team=BlueTeam] voted_$(Name)
$execute as @e[tag=$(Name)_team_blue_stand] if entity @a[scores={team_blue=1..}] run scoreboard objectives remove $(Name)_team_blue_approves
$execute as @e[tag=$(Name)_team_blue_stand] if entity @a[scores={team_blue=1..}] run kill @s
$execute as @a[scores={team_blue=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_blue_stand","Vote_Stand","blue"]}
$execute as @a[tag=$(Name)_team_blue_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_blue_stand] run scoreboard objectives add $(Name)_team_blue_approves trigger
$execute as @e[tag=$(Name)_team_blue_stand] run scoreboard objectives add $(Name)_team_blue_disapproves trigger
$scoreboard players enable @a[team=BlueTeam] $(Name)_team_blue_approves
$scoreboard players enable @a[team=BlueTeam] $(Name)_team_blue_disapproves
$execute as @e[tag=$(Name)_team_blue_stand] run data modify storage teams:macro this.Name set value $(Name)

scoreboard players set @a[scores={team_blue=1..}] team_blue 0

# Handles the request to join the Gray team
$execute if entity @a[scores={team_gray=1..}] run scoreboard players reset @a[team=GrayTeam] voted_$(Name)
$execute as @e[tag=$(Name)_team_gray_stand] if entity @a[scores={team_gray=1..}]run scoreboard objectives remove $(Name)_team_gray_approves
$execute as @e[tag=$(Name)_team_gray_stand] if entity @a[scores={team_gray=1..}] run kill @s
$execute as @a[scores={team_gray=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_gray_stand","Vote_Stand","gray"]}
$execute as @a[tag=$(Name)_team_gray_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_gray_stand] run scoreboard objectives add $(Name)_team_gray_approves trigger
$execute as @e[tag=$(Name)_team_gray_stand] run scoreboard objectives add $(Name)_team_gray_disapproves trigger
$scoreboard players enable @a[team=GrayTeam] $(Name)_team_gray_approves
$scoreboard players enable @a[team=GrayTeam] $(Name)_team_gray_disapproves
$execute as @e[tag=$(Name)_team_gray_stand] run data modify storage teams:macro this.Name set value $(Name)


scoreboard players set @a[scores={team_gray=1..}] team_gray 0

# Handles the request to join the Green team
$execute if entity @a[scores={team_green=1..}] run scoreboard players reset @a[team=GreenTeam] voted_$(Name)
$execute as @e[tag=$(Name)_team_green_stand] if entity @a[scores={team_green=1..}]run scoreboard objectives remove $(Name)_team_green_approves
$execute as @e[tag=$(Name)_team_green_stand] if entity @a[scores={team_green=1..}] run kill @s
$execute as @a[scores={team_green=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_green_stand","Vote_Stand","green"]}
$execute as @a[tag=$(Name)_team_green_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_green_stand] run scoreboard objectives add $(Name)_team_green_approves trigger
$execute as @e[tag=$(Name)_team_green_stand] run scoreboard objectives add $(Name)_team_green_disapproves trigger
$scoreboard players enable @a[team=GreenTeam] $(Name)_team_green_approves
$scoreboard players enable @a[team=GreenTeam] $(Name)_team_green_disapproves
$execute as @e[tag=$(Name)_team_green_stand] run data modify storage teams:macro this.Name set value $(Name)


scoreboard players set @a[scores={team_green=1..}] team_green 0

# Handles the request to join the Red team
$execute if entity @a[scores={team_red=1..}] run scoreboard players reset @a[team=RedTeam] voted_$(Name)
$execute as @e[tag=$(Name)_team_red_stand] if entity @a[scores={team_red=1..}] run scoreboard objectives remove $(Name)_team_red_approves
$execute as @e[tag=$(Name)_team_red_stand] if entity @a[scores={team_red=1..}] run kill @s
$execute as @a[scores={team_red=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_red_stand","Vote_Stand","red"]}
$execute as @a[tag=$(Name)_team_red_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_red_stand] run scoreboard objectives add $(Name)_team_red_approves trigger
$execute as @e[tag=$(Name)_team_red_stand] run scoreboard objectives add $(Name)_team_red_disapproves trigger
$scoreboard players enable @a[team=RedTeam] $(Name)_team_red_approves
$scoreboard players enable @a[team=RedTeam] $(Name)_team_red_disapproves
$execute as @e[tag=$(Name)_team_red_stand] run data modify storage teams:macro this.Name set value $(Name)

scoreboard players set @a[scores={team_red=1..}] team_red 0

# Handles the request to join the Purple team
$execute if entity @a[scores={team_purple=1..}] run scoreboard players reset @a[team=PurpleTeam] voted_$(Name)
$execute as @e[tag=$(Name)_team_purple_stand] if entity @a[scores={team_purple=1..}]run scoreboard objectives remove $(Name)_team_purple_approves
$execute as @e[tag=$(Name)_team_purple_stand] if entity @a[scores={team_purple=1..}] run kill @s
$execute as @a[scores={team_purple=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_purple_stand","Vote_Stand","purple"]}
$execute as @a[tag=$(Name)_team_purple_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_purple_stand] run scoreboard objectives add $(Name)_team_purple_approves trigger
$execute as @e[tag=$(Name)_team_purple_stand] run scoreboard objectives add $(Name)_team_purple_disapproves trigger
$scoreboard players enable @a[team=PurpleTeam] $(Name)_team_purple_approves
$scoreboard players enable @a[team=PurpleTeam] $(Name)_team_purple_disapproves
$execute as @e[tag=$(Name)_team_purple_stand] run data modify storage teams:macro this.Name set value $(Name)


scoreboard players set @a[scores={team_purple=1..}] team_purple 0

# Handles the request to join the Yellow team
$execute if entity @a[scores={team_yellow=1..}] run scoreboard players reset @a[team=YellowTeam] voted_$(Name)
$execute as @e[tag=$(Name)_team_yellow_stand] if entity @a[scores={team_yellow=1..}] run scoreboard objectives remove $(Name)_team_yellow_approves
$execute as @e[tag=$(Name)_team_yellow_stand] if entity @a[scores={team_yellow=1..}] run kill @s
$execute as @a[scores={team_yellow=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_yellow_stand","Vote_Stand","yellow"]}
$execute as @a[tag=$(Name)_team_yellow_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_yellow_stand] run scoreboard objectives add $(Name)_team_yellow_approves trigger
$execute as @e[tag=$(Name)_team_yellow_stand] run scoreboard objectives add $(Name)_team_yellow_disapproves trigger
$scoreboard players enable @a[team=YellowTeam] $(Name)_team_yellow_approves
$scoreboard players enable @a[team=YellowTeam] $(Name)_team_yellow_disapproves
$execute as @e[tag=$(Name)_team_yellow_stand] run data modify storage teams:macro this.Name set value $(Name)


scoreboard players set @a[scores={team_yellow=1..}] team_yellow 0
