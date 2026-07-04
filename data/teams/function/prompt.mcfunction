# Prompt every voter who hasn't voted yet, with clickable buttons.
# The {selector} component renders the subject's name automatically.
#   #mode 1 = join request,  2 = kick vote

# JOIN prompt
execute if score #mode teamvote matches 1 as @a[tag=voter,scores={voted=0}] run tellraw @s ["",{"selector":"@a[tag=vote_requester,limit=1]","bold":true,"color":"gold"},{"text":" wants to join your team!\n","color":"yellow"},{"text":"[ Approve ]","color":"green","click_event":{"action":"run_command","command":"/trigger vote_yes set 1"}},{"text":"     ","color":"gray"},{"text":"[ Reject ]","color":"red","click_event":{"action":"run_command","command":"/trigger vote_no set 1"}}]

# KICK prompt
execute if score #mode teamvote matches 2 as @a[tag=voter,scores={voted=0}] run tellraw @s ["",{"text":"Kick ","color":"yellow"},{"selector":"@a[tag=kick_target,limit=1]","bold":true,"color":"red"},{"text":" from the team?\n","color":"yellow"},{"text":"[ Yes ]","color":"green","click_event":{"action":"run_command","command":"/trigger vote_yes set 1"}},{"text":"     ","color":"gray"},{"text":"[ No ]","color":"red","click_event":{"action":"run_command","command":"/trigger vote_no set 1"}}]
