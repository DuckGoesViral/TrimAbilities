# Show the player (@s) a clickable list of their teammates to start a kick vote.
scoreboard players set @s kickmenu 0

# Tag everyone on the opener's team, then drop the opener so they can't kick themselves.
execute if entity @s[team=AquaTeam] run tag @a[team=AquaTeam] add kickable
execute if entity @s[team=GoldTeam] run tag @a[team=GoldTeam] add kickable
execute if entity @s[team=BlueTeam] run tag @a[team=BlueTeam] add kickable
execute if entity @s[team=GrayTeam] run tag @a[team=GrayTeam] add kickable
execute if entity @s[team=GreenTeam] run tag @a[team=GreenTeam] add kickable
execute if entity @s[team=RedTeam] run tag @a[team=RedTeam] add kickable
execute if entity @s[team=PurpleTeam] run tag @a[team=PurpleTeam] add kickable
execute if entity @s[team=YellowTeam] run tag @a[team=YellowTeam] add kickable
tag @s remove kickable

tag @s add menu_opener
tellraw @s {"text":"--- Start a Kick Vote ---","color":"gold","bold":true}
execute unless entity @a[tag=kickable] run tellraw @s {"text":"You have no teammates to kick.","color":"gray"}
execute as @a[tag=kickable] run function teams:kick_button
tag @a remove kickable
tag @s remove menu_opener
