# Macro: $(id) is the teammate's player_id. Runs as @s = that teammate.
# Sends the opener a [Kick] button that targets this teammate by id.
$tellraw @a[tag=menu_opener] ["",{"text":"  [ Kick ] ","color":"red","bold":true,"click_event":{"action":"run_command","command":"/trigger votekick set $(id)"}},{"selector":"@s","color":"white"}]
