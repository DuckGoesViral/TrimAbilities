# Runs as @s = one kickable teammate. Loads their id into the macro storage
# and prints a clickable [Kick] button (showing @s's name) to the menu opener.
execute store result storage teams:macro k.id int 1 run scoreboard players get @s player_id
function teams:kick_button_macro with storage teams:macro k
