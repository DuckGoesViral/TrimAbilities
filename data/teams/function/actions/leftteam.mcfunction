# Player (@s) confirmed leaving. Announce to their team, then remove them.
execute if entity @s[team=AquaTeam] run tellraw @a[team=AquaTeam] ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]
execute if entity @s[team=GoldTeam] run tellraw @a[team=GoldTeam] ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]
execute if entity @s[team=BlueTeam] run tellraw @a[team=BlueTeam] ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]
execute if entity @s[team=GrayTeam] run tellraw @a[team=GrayTeam] ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]
execute if entity @s[team=GreenTeam] run tellraw @a[team=GreenTeam] ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]
execute if entity @s[team=RedTeam] run tellraw @a[team=RedTeam] ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]
execute if entity @s[team=PurpleTeam] run tellraw @a[team=PurpleTeam] ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]
execute if entity @s[team=YellowTeam] run tellraw @a[team=YellowTeam] ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the team.","color":"red"}]

team leave @s
tellraw @s {"text":"You have left your team.","color":"red","bold":true}
scoreboard players set @s has_team 0
scoreboard players set @s confirm 0
scoreboard players set @s confirm_leave 0
