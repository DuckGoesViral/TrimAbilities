# End the active vote and reset all per-vote state so the next request is clean.
scoreboard players set #active teamvote 0
scoreboard players set #mode teamvote 1

tag @a remove vote_requester
tag @a remove voter
tag @a remove kick_target
tag @a remove kick_target_tmp
tag @a remove kickscope
tag @a remove req_aqua
tag @a remove req_gold
tag @a remove req_blue
tag @a remove req_gray
tag @a remove req_green
tag @a remove req_red
tag @a remove req_purple
tag @a remove req_yellow
tag @a remove req_black
tag @a remove req_darkblue
tag @a remove req_darkgreen
tag @a remove req_darkaqua
tag @a remove req_darkred
tag @a remove req_darkpurple
tag @a remove req_darkgray
tag @a remove req_white

scoreboard players set @a vote_yes 0
scoreboard players set @a vote_no 0
scoreboard players set @a voted 0
