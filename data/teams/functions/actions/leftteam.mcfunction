execute as @a[scores={has_team=1,confirm=1..,confirm_leave=1..}] run scoreboard players set @s has_team 0
execute as @a[scores={has_team=0,confirm=1..}] run scoreboard players set @s confirm 0
execute as @a[scores={has_team=0,confirm_leave=1..}] run scoreboard players set @s confirm_leave 0