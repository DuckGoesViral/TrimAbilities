# The vote failed (majority rejected or it timed out): notify and clean up.
# JOIN
execute if score #mode teamvote matches 1 as @a[tag=vote_requester] run tellraw @s {"text":"Your join request was not approved.","color":"red"}
execute if score #mode teamvote matches 1 if entity @a[tag=vote_requester] run tellraw @a[tag=voter] ["",{"text":"The vote to add ","color":"gray"},{"selector":"@a[tag=vote_requester,limit=1]","color":"gray","bold":true},{"text":" did not pass.","color":"gray"}]
# KICK
execute if score #mode teamvote matches 2 as @a[tag=kick_target] run tellraw @s {"text":"A vote to remove you from your team did not pass.","color":"green"}
execute if score #mode teamvote matches 2 if entity @a[tag=kick_target] run tellraw @a[tag=voter] ["",{"text":"The vote to kick ","color":"gray"},{"selector":"@a[tag=kick_target,limit=1]","color":"gray","bold":true},{"text":" did not pass.","color":"gray"}]
function teams:vote_end
