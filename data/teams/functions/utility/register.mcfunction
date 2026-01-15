execute as @a[scores={registered=0}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={registered=0}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={registered=0}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_aqua=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name