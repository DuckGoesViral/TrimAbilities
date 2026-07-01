# Runs every tick while a join vote is active (#active teamvote == 1).

# Votes needed to pass = ceil(count / 2)  ->  (count + 1) / 2
scoreboard players operation #threshold teamvote = #count teamvote
scoreboard players add #threshold teamvote 1
scoreboard players operation #threshold teamvote /= #two teamvote

# Periodically re-prompt voters who haven't voted yet (every ~10s).
scoreboard players remove #promptcd teamvote 1
execute if score #promptcd teamvote matches ..0 run function teams:prompt
execute if score #promptcd teamvote matches ..0 run scoreboard players set #promptcd teamvote 200

# Tally any new votes. Only target-team members carry the 'voter' tag.
execute as @a[tag=voter,scores={vote_yes=1..,voted=0}] run scoreboard players add #approve teamvote 1
execute as @a[tag=voter,scores={vote_yes=1..,voted=0}] run tellraw @s {"text":"You voted to APPROVE.","color":"green"}
execute as @a[tag=voter,scores={vote_yes=1..,voted=0}] run scoreboard players set @s voted 1
execute as @a[tag=voter,scores={vote_no=1..,voted=0}] run scoreboard players add #disapprove teamvote 1
execute as @a[tag=voter,scores={vote_no=1..,voted=0}] run tellraw @s {"text":"You voted to REJECT.","color":"red"}
execute as @a[tag=voter,scores={vote_no=1..,voted=0}] run scoreboard players set @s voted 1

# Resolve the vote.
execute if score #approve teamvote >= #threshold teamvote run function teams:vote_pass
execute if score #active teamvote matches 1 if score #disapprove teamvote >= #threshold teamvote run function teams:vote_fail
scoreboard players remove #timer teamvote 1
execute if score #active teamvote matches 1 if score #timer teamvote matches ..0 run function teams:vote_fail
