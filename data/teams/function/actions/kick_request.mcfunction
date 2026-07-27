# Runs as @s = the kicker, who triggered /trigger votekick set <targetId>.
# Validates the target, then starts a kick vote.
scoreboard players operation #targetid teamvote = @s votekick
scoreboard players set @s votekick 0

# Tag the kicker's teammates (same team), excluding the kicker.
execute if entity @s[team=AquaTeam] run tag @a[team=AquaTeam] add kickscope
execute if entity @s[team=GoldTeam] run tag @a[team=GoldTeam] add kickscope
execute if entity @s[team=BlueTeam] run tag @a[team=BlueTeam] add kickscope
execute if entity @s[team=GrayTeam] run tag @a[team=GrayTeam] add kickscope
execute if entity @s[team=GreenTeam] run tag @a[team=GreenTeam] add kickscope
execute if entity @s[team=RedTeam] run tag @a[team=RedTeam] add kickscope
execute if entity @s[team=PurpleTeam] run tag @a[team=PurpleTeam] add kickscope
execute if entity @s[team=YellowTeam] run tag @a[team=YellowTeam] add kickscope
execute if entity @s[team=BlackTeam] run tag @a[team=BlackTeam] add kickscope
execute if entity @s[team=DarkBlueTeam] run tag @a[team=DarkBlueTeam] add kickscope
execute if entity @s[team=DarkGreenTeam] run tag @a[team=DarkGreenTeam] add kickscope
execute if entity @s[team=DarkAquaTeam] run tag @a[team=DarkAquaTeam] add kickscope
execute if entity @s[team=DarkRedTeam] run tag @a[team=DarkRedTeam] add kickscope
execute if entity @s[team=DarkPurpleTeam] run tag @a[team=DarkPurpleTeam] add kickscope
execute if entity @s[team=DarkGrayTeam] run tag @a[team=DarkGrayTeam] add kickscope
execute if entity @s[team=WhiteTeam] run tag @a[team=WhiteTeam] add kickscope
tag @s remove kickscope

# The target is the teammate whose id matches the requested id.
execute as @a[tag=kickscope] if score @s player_id = #targetid teamvote run tag @s add kick_target_tmp

# Validate and branch.
execute unless entity @a[tag=kick_target_tmp] run tellraw @s {"text":"Couldn't find that teammate to kick.","color":"red"}
execute if entity @a[tag=kick_target_tmp] if score #active teamvote matches 1 run tellraw @s {"text":"Another vote is already in progress - try again soon.","color":"red"}
execute if entity @a[tag=kick_target_tmp] if score #active teamvote matches 0 run function teams:actions/kick_start

# Cleanup scratch tags.
tag @a remove kickscope
tag @a remove kick_target_tmp
