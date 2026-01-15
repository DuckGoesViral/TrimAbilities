# Handles the request to join the Aqua team
$execute as @e[tag=$(Name)_team_aqua_stand] run scoreboard objectives remove $(Name)_team_aqua_approves
$execute as @e[tag=$(Name)_team_aqua_stand] if entity @a[scores={team_aqua=1..}] run kill @s
execute as @a[scores={team_aqua=1..}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={team_aqua=1..}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={team_aqua=1}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_aqua=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name
$execute as @a[scores={team_aqua=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_aqua_stand","Vote_Stand"]}
execute positioned 0 10000 0 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0
execute as @a[scores={team_aqua=1..}] run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from storage teams:macro this.Name
execute as @a[scores={team_aqua=1..}] positioned 0 10000 0 run say done
$execute as @a[tag=$(Name)_team_aqua_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_aqua_stand] run scoreboard objectives add $(Name)_team_aqua_approves dummy

scoreboard players set @a[scores={team_aqua=1..}] team_aqua 0

# Handles the request to join the Gold team
$execute as @e[tag=$(Name)_team_aqua_stand] run scoreboard objectives remove $(Name)_team_gold_approves
$execute as @e[tag=$(Name)_team_gold_stand] if entity @a[scores={team_gold=1..}] run kill @s
execute as @a[scores={team_gold=1..}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={team_gold=1..}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={team_gold=1}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_gold=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name
$execute as @a[scores={team_gold=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_gold_stand","Vote_Stand"]}
execute positioned 0 10000 0 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0
execute as @a[scores={team_gold=1..}] run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from storage teams:macro this.Name
execute as @a[scores={team_gold=1..}] positioned 0 10000 0 run say done
$execute as @a[tag=$(Name)_team_gold_stand] run scoreboard players set @s vote_timer 0
$execute as @e[tag=$(Name)_team_aqua_stand] run scoreboard objectives add $(Name)_team_gold_approves dummy

scoreboard players set @a[scores={team_gold=1..}] team_gold 0

# Handles the request to join the Blue team
$execute as @e[tag=$(Name)_team_blue_stand] if entity @a[scores={team_blue=1..}] run kill @s
execute as @a[scores={team_blue=1..}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={team_blue=1..}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={team_blue=1}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_blue=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name
$execute as @a[scores={team_blue=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_blue_stand","Vote_Stand"]}
execute positioned 0 10000 0 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0
execute as @a[scores={team_blue=1..}] run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from storage teams:macro this.Name
execute as @a[scores={team_blue=1..}] positioned 0 10000 0 run say done
$execute as @a[tag=$(Name)_team_blue_stand] run scoreboard players set @s vote_timer 0

scoreboard players set @a[scores={team_blue=1..}] team_blue 0

# Handles the request to join the Gray team
$execute as @e[tag=$(Name)_team_gray_stand] if entity @a[scores={team_gray=1..}] run kill @s
execute as @a[scores={team_gray=1..}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={team_gray=1..}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={team_gray=1}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_gray=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name
$execute as @a[scores={team_gray=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_gray_stand","Vote_Stand"]}
execute positioned 0 10000 0 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0
execute as @a[scores={team_gray=1..}] run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from storage teams:macro this.Name
execute as @a[scores={team_gray=1..}] positioned 0 10000 0 run say done
$execute as @a[tag=$(Name)_team_gray_stand] run scoreboard players set @s vote_timer 0

scoreboard players set @a[scores={team_gray=1..}] team_gray 0

# Handles the request to join the Green team
$execute as @e[tag=$(Name)_team_green_stand] if entity @a[scores={team_green=1..}] run kill @s
execute as @a[scores={team_green=1..}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={team_green=1..}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={team_green=1}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_green=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name
$execute as @a[scores={team_green=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_green_stand","Vote_Stand"]}
execute positioned 0 10000 0 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0
execute as @a[scores={team_green=1..}] run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from storage teams:macro this.Name
execute as @a[scores={team_green=1..}] positioned 0 10000 0 run say done
$execute as @a[tag=$(Name)_team_green_stand] run scoreboard players set @s vote_timer 0

scoreboard players set @a[scores={team_green=1..}] team_green 0

# Handles the request to join the Red team
$execute as @e[tag=$(Name)_team_red_stand] if entity @a[scores={team_red=1..}] run kill @s
execute as @a[scores={team_red=1..}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={team_red=1..}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={team_red=1}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_red=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name
$execute as @a[scores={team_red=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_red_stand","Vote_Stand"]}
execute positioned 0 10000 0 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0
execute as @a[scores={team_red=1..}] run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from storage teams:macro this.Name
execute as @a[scores={team_red=1..}] positioned 0 10000 0 run say done
$execute as @a[tag=$(Name)_team_red_stand] run scoreboard players set @s vote_timer 0

scoreboard players set @a[scores={team_red=1..}] team_red 0

# Handles the request to join the Purple team
$execute as @e[tag=$(Name)_team_purple_stand] if entity @a[scores={team_purple=1..}] run kill @s
execute as @a[scores={team_purple=1..}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={team_purple=1..}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={team_purple=1}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_purple=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name
$execute as @a[scores={team_purple=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_purple_stand","Vote_Stand"]}
execute positioned 0 10000 0 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0
execute as @a[scores={team_purple=1..}] run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from storage teams:macro this.Name
execute as @a[scores={team_purple=1..}] positioned 0 10000 0 run say done
$execute as @a[tag=$(Name)_team_purple_stand] run scoreboard players set @s vote_timer 0

scoreboard players set @a[scores={team_purple=1..}] team_purple 0

# Handles the request to join the Yellow team
$execute as @e[tag=$(Name)_team_yellow_stand] if entity @a[scores={team_yellow=1..}] run kill @s
execute as @a[scores={team_yellow=1..}] store result score @s ID store result storage teams:macro this.ID int 1 run scoreboard players add #new ID 1
execute as @a[scores={team_yellow=1..}] run data modify storage teams:macro this.UUID set from entity @s UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon minecraft:block_display 0 5000 0 {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot teams:player_head
execute as @a[scores={team_yellow=1}] positioned 0 5000 0 run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] Item.tag.SkullOwner.Id set from storage teams:macro this.UUID
execute as @a[scores={team_yellow=1..}] run data modify storage teams:macro this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name
$execute as @a[scores={team_yellow=1}] positioned 0 1000 0 run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Invisible:1b,equipment:{head:{id:player_head}},Tags:["$(Name)_team_yellow_stand","Vote_Stand"]}
execute positioned 0 10000 0 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0
execute as @a[scores={team_yellow=1..}] run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from storage teams:macro this.Name
execute as @a[scores={team_yellow=1..}] positioned 0 10000 0 run say done
$execute as @a[tag=$(Name)_team_yellow_stand] run scoreboard players set @s vote_timer 0

scoreboard players set @a[scores={team_yellow=1..}] team_yellow 0
