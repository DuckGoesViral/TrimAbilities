# ============================================================
#  TEAMS tick - membership, join + leave + kick dispatch, vote
#  Heavy maintenance (team counts, fullness, trigger re-enables)
#  runs every 10 ticks via teams:slow_tick.
# ============================================================

# --- Update each player's has_team flag ---
scoreboard players set @a has_team 1
execute as @a[team=] run scoreboard players set @s has_team 0

# --- Give one new player a unique id per tick (used for kick targeting) ---
execute as @a[tag=!has_id,limit=1] run function teams:assign_id

# --- Slow maintenance every 10 ticks ---
scoreboard players add #ticker teamvote 1
execute if score #ticker teamvote matches 10.. run function teams:slow_tick
execute if score #ticker teamvote matches 10.. run scoreboard players set #ticker teamvote 0

# --- Leave-team flow ---
execute as @a[scores={has_team=1,leaveteam=1..}] run function teams:actions/leaveteam
execute as @a[scores={confirm_leave=1..}] run scoreboard players enable @s confirm
execute as @a[scores={has_team=1,confirm_leave=1..,confirm=1..}] run function teams:actions/leftteam

# --- Join requests (triggers are only enabled for teamless players) ---
execute as @a[scores={join_aqua=1..}] run function teams:actions/jointeam
execute as @a[scores={join_gold=1..}] run function teams:actions/jointeam
execute as @a[scores={join_blue=1..}] run function teams:actions/jointeam
execute as @a[scores={join_gray=1..}] run function teams:actions/jointeam
execute as @a[scores={join_green=1..}] run function teams:actions/jointeam
execute as @a[scores={join_red=1..}] run function teams:actions/jointeam
execute as @a[scores={join_purple=1..}] run function teams:actions/jointeam
execute as @a[scores={join_yellow=1..}] run function teams:actions/jointeam
execute as @a[scores={join_black=1..}] run function teams:actions/jointeam
execute as @a[scores={join_darkblue=1..}] run function teams:actions/jointeam
execute as @a[scores={join_darkgreen=1..}] run function teams:actions/jointeam
execute as @a[scores={join_darkaqua=1..}] run function teams:actions/jointeam
execute as @a[scores={join_darkred=1..}] run function teams:actions/jointeam
execute as @a[scores={join_darkpurple=1..}] run function teams:actions/jointeam
execute as @a[scores={join_darkgray=1..}] run function teams:actions/jointeam
execute as @a[scores={join_white=1..}] run function teams:actions/jointeam

# --- Kick: open the menu, or start a kick vote against a chosen teammate ---
execute as @a[scores={kickmenu=1..}] run function teams:kickmenu
execute as @a[scores={votekick=1..}] run function teams:actions/kick_request

# --- Run the active vote (join or kick), if one is in progress ---
execute if score #active teamvote matches 1 run function teams:vote
