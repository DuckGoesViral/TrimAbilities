## Check Votes for Aqua Team Join Request
#Adds 1 vote to player if voted yes and hasn't voted yet
$execute as @a[team=AquaTeam,votes_$(Name)=0] if score @s $(Name)_team_aqua_approves matches 1.. run scoreboard players set @e[type=armor_stand,tag=$(Name)_team_aqua_stand] $(Name)_team_aqua_approves 1
$execute as @a[team=AquaTeam,votes_$(Name)=0] if score @s $(Name)_team_aqua_approves matches 1.. run scoreboard players set @s votes_$(Name) 1
$tellraw @s {"text":"You voted YES to let ","extra":[{"text":"$(Name)","color":"green","bold":true},{"text":" join your team!","color":"yellow"}]}

# Removes reminder and vote if player voted no
$execute as @a[team=AquaTeam,votes_$(Name)=0] if score @s $(Name)_team_aqua_disapproves matches 1.. run scoreboard players set @s votes_$(Name) 1

## Check Votes for Gold Team Join Request
#Adds 1 vote to player if voted yes and hasn't voted yet
$execute as @a[team=GoldTeam,votes_$(Name)=0] if score @s $(Name)_team_gold_approves matches 1.. run scoreboard players set @e[type=armor_stand,tag=$(Name)_team_gold_stand] $(Name)_team_gold_approves 1
$execute as @a[team=GoldTeam,votes_$(Name)=0] if score @s $(Name)_team_gold_approves matches 1.. run scoreboard players set @s votes_$(Name) 1
$tellraw @s {"text":"You voted YES to let ","extra":[{"text":"$(Name)","color":"green","bold":true},{"text":" join your team!","color":"yellow"}]}

# Removes reminder and vote if player voted no
$execute as @a[team=GoldTeam,votes_$(Name)=0] if score @s $(Name)_team_gold_disapproves matches 1.. run scoreboard players set @s votes_$(Name) 1

## Check Votes for Blue Team Join Request
#Adds 1 vote to player if voted yes and hasn't voted yet
$execute as @a[team=BlueTeam,votes_$(Name)=0] if score @s $(Name)_team_blue_approves matches 1.. run scoreboard players set @e[type=armor_stand,tag=$(Name)_team_blue_stand] $(Name)_team_blue_approves 1
$execute as @a[team=BlueTeam,votes_$(Name)=0] if score @s $(Name)_team_blue_approves matches 1.. run scoreboard players set @s votes_$(Name) 1
$tellraw @s {"text":"You voted YES to let ","extra":[{"text":"$(Name)","color":"green","bold":true},{"text":" join your team!","color":"yellow"}]}

# Removes reminder and vote if player voted no
$execute as @a[team=BlueTeam,votes_$(Name)=0] if score @s $(Name)_team_blue_disapproves matches 1.. run scoreboard players set @s votes_$(Name) 1

## Check Votes for Gray Team Join Request
#Adds 1 vote to player if voted yes and hasn't voted yet
$execute as @a[team=GrayTeam,votes_$(Name)=0] if score @s $(Name)_team_gray_approves matches 1.. run scoreboard players set @e[type=armor_stand,tag=$(Name)_team_gray_stand] $(Name)_team_gray_approves 1
$execute as @a[team=GrayTeam,votes_$(Name)=0] if score @s $(Name)_team_gray_approves matches 1.. run scoreboard players set @s votes_$(Name) 1
$tellraw @s {"text":"You voted YES to let ","extra":[{"text":"$(Name)","color":"green","bold":true},{"text":" join your team!","color":"yellow"}]}

# Removes reminder and vote if player voted no
$execute as @a[team=GrayTeam,votes_$(Name)=0] if score @s $(Name)_team_gray_disapproves matches 1.. run scoreboard players set @s votes_$(Name) 1

## Check Votes for Green Team Join Request
#Adds 1 vote to player if voted yes and hasn't voted yet
$execute as @a[team=GreenTeam,votes_$(Name)=0] if score @s $(Name)_team_green_approves matches 1.. run scoreboard players set @e[type=armor_stand,tag=$(Name)_team_green_stand] $(Name)_team_green_approves 1
$execute as @a[team=GreenTeam,votes_$(Name)=0] if score @s $(Name)_team_green_approves matches 1.. run scoreboard players set @s votes_$(Name) 1
$tellraw @s {"text":"You voted YES to let ","extra":[{"text":"$(Name)","color":"green","bold":true},{"text":" join your team!","color":"yellow"}]}

# Removes reminder and vote if player voted no
$execute as @a[team=GreenTeam,votes_$(Name)=0] if score @s $(Name)_team_green_disapproves matches 1.. run scoreboard players set @s votes_$(Name) 1

## Check Votes for Red Team Join Request
#Adds 1 vote to player if voted yes and hasn't voted yet
$execute as @a[team=RedTeam,votes_$(Name)=0] if score @s $(Name)_team_red_approves matches 1.. run scoreboard players set @e[type=armor_stand,tag=$(Name)_team_red_stand] $(Name)_team_red_approves 1
$execute as @a[team=RedTeam,votes_$(Name)=0] if score @s $(Name)_team_red_approves matches 1.. run scoreboard players set @s votes_$(Name) 1
$tellraw @s {"text":"You voted YES to let ","extra":[{"text":"$(Name)","color":"green","bold":true},{"text":" join your team!","color":"yellow"}]}

# Removes reminder and vote if player voted no
$execute as @a[team=RedTeam,votes_$(Name)=0] if score @s $(Name)_team_red_disapproves matches 1.. run scoreboard players set @s votes_$(Name) 1

## Check Votes for Purple Team Join Request
#Adds 1 vote to player if voted yes and hasn't voted yet
$execute as @a[team=PurpleTeam,votes_$(Name)=0] if score @s $(Name)_team_purple_approves matches 1.. run scoreboard players set @e[type=armor_stand,tag=$(Name)_team_purple_stand] $(Name)_team_purple_approves 1
$execute as @a[team=PurpleTeam,votes_$(Name)=0] if score @s $(Name)_team_purple_approves matches 1.. run scoreboard players set @s votes_$(Name) 1
$tellraw @s {"text":"You voted YES to let ","extra":[{"text":"$(Name)","color":"green","bold":true},{"text":" join your team!","color":"yellow"}]}
# Removes reminder and vote if player voted no
$execute as @a[team=PurpleTeam,votes_$(Name)=0] if score @s $(Name)_team_purple_disapproves matches 1.. run scoreboard players set @s votes_$(Name) 1

## Check Votes for Yellow Team Join Request
#Adds 1 vote to player if voted yes and hasn't voted yet
$execute as @a[team=YellowTeam,votes_$(Name)=0] if score @s $(Name)_team_yellow_approves matches 1.. run scoreboard players set @e[type=armor_stand,tag=$(Name)_team_yellow_stand] $(Name)_team_yellow_approves 1
$execute as @a[team=YellowTeam,votes_$(Name)=0] if score @s $(Name)_team_yellow_approves matches 1.. run scoreboard players set @s votes_$(Name) 1
$tellraw @s {"text":"You voted YES to let ","extra":[{"text":"$(Name)","color":"green","bold":true},{"text":" join your team!","color":"yellow"}]}

# Removes reminder and vote if player voted no
$execute as @a[team=YellowTeam,votes_$(Name)=0] if score @s $(Name)_team_yellow_disapproves matches 1.. run scoreboard players set @s votes_$(Name) 1

$execute as @e[type=armor_stand,tag=Vote_Stand,tag=aqua] if score @s $(Name)_team_aqua_approves > aqua_team aqua_team_threshold run team join $(Name) AquaTeam
$execute as @e[type=armor_stand,tag=Vote_Stand,tag=gold] if score @s $(Name)_team_gold_approves > gold_team gold_team_threshold run team join $(Name) GoldTeam
$execute as @e[type=armor_stand,tag=Vote_Stand,tag=blue] if score @s $(Name)_team_blue_approves > blue_team blue_team_threshold run team join $(Name) BlueTeam
$execute as @e[type=armor_stand,tag=Vote_Stand,tag=gray] if score @s $(Name)_team_gray_approves > gray_team gray_team_threshold run team join $(Name) GrayTeam
$execute as @e[type=armor_stand,tag=Vote_Stand,tag=green] if score @s $(Name)_team_green_approves > green_team green_team_threshold run team join $(Name) GreenTeam
$execute as @e[type=armor_stand,tag=Vote_Stand,tag=red] if score @s $(Name)_team_red_approves > red_team red_team_threshold run team join $(Name) RedTeam
$execute as @e[type=armor_stand,tag=Vote_Stand,tag=purple] if score @s $(Name)_team_purple_approves > purple_team purple_team_threshold run team join $(Name) PurpleTeam
$execute as @e[type=armor_stand,tag=Vote_Stand,tag=yellow] if score @s $(Name)_team_yellow_approves > yellow_team yellow_team_threshold run team join $(Name) YellowTeam