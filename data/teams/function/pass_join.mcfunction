# A JOIN vote passed: add the requester to their target team and announce.
execute as @a[tag=vote_requester,tag=req_aqua] run team join AquaTeam @s
execute as @a[tag=vote_requester,tag=req_gold] run team join GoldTeam @s
execute as @a[tag=vote_requester,tag=req_blue] run team join BlueTeam @s
execute as @a[tag=vote_requester,tag=req_gray] run team join GrayTeam @s
execute as @a[tag=vote_requester,tag=req_green] run team join GreenTeam @s
execute as @a[tag=vote_requester,tag=req_red] run team join RedTeam @s
execute as @a[tag=vote_requester,tag=req_purple] run team join PurpleTeam @s
execute as @a[tag=vote_requester,tag=req_yellow] run team join YellowTeam @s
execute as @a[tag=vote_requester,tag=req_black] run team join BlackTeam @s
execute as @a[tag=vote_requester,tag=req_darkblue] run team join DarkBlueTeam @s
execute as @a[tag=vote_requester,tag=req_darkgreen] run team join DarkGreenTeam @s
execute as @a[tag=vote_requester,tag=req_darkaqua] run team join DarkAquaTeam @s
execute as @a[tag=vote_requester,tag=req_darkred] run team join DarkRedTeam @s
execute as @a[tag=vote_requester,tag=req_darkpurple] run team join DarkPurpleTeam @s
execute as @a[tag=vote_requester,tag=req_darkgray] run team join DarkGrayTeam @s
execute as @a[tag=vote_requester,tag=req_white] run team join WhiteTeam @s

execute if entity @a[tag=vote_requester] run tellraw @a[tag=voter] ["",{"selector":"@a[tag=vote_requester,limit=1]","bold":true,"color":"green"},{"text":" has joined your team!","color":"yellow"}]
execute as @a[tag=vote_requester] run tellraw @s {"text":"Your request was approved - welcome to the team!","color":"green","bold":true}
execute as @a[tag=vote_requester] run scoreboard players set @s has_team 1
