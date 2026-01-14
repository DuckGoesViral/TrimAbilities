# Runs if a player leaves their team
scoreboard players set @s leaveteam 0
scoreboard players set @s confirm_leave 1
execute as @a[scores={has_team=1..,confirm_leave=1..}] run scoreboard players enable @s confirm
execute as @a[scores={has_team=1..,confirm_leave=1..}] run tellraw @s {"text":"Click to confirm!","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger confirm"}}
execute as @a[scores={has_team=1..,confirm_leave=1..}] run tellraw @s {"text":"This will remove you from your current team.","color":"red"}