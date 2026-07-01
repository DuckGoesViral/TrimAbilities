# Player (@s) triggered leaveteam: ask them to confirm.
scoreboard players set @s leaveteam 0
scoreboard players set @s confirm_leave 1
scoreboard players enable @s confirm
tellraw @s {"text":"This will remove you from your current team.","color":"red"}
tellraw @s {"text":"[ Confirm Leave ]","color":"dark_red","bold":true,"click_event":{"action":"run_command","command":"/trigger confirm"}}
