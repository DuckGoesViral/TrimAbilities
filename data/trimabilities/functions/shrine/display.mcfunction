
execute unless entity @e[type=chest_minecart,tag=trimShrine] at @e[type=marker,tag=trimShrine] run summon chest_minecart ~ ~ ~ {Tags:["trimShrine"],CustomName:'[{"text":"Trim Shrine","color":"dark_purple"}]',CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1b}


execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:0b}]}] run item replace entity @s container.0 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:1b}]}] run item replace entity @s container.1 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:2b}]}] run item replace entity @s container.2 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:3b}]}] run item replace entity @s container.3 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:4b}]}] run item replace entity @s container.4 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:5b}]}] run item replace entity @s container.5 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:6b}]}] run item replace entity @s container.6 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:7b}]}] run item replace entity @s container.7 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:8b}]}] run item replace entity @s container.8 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:9b}]}] run item replace entity @s container.9 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:10b}]}] run item replace entity @s container.10 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
item replace entity @e[type=chest_minecart,tag=trimShrine] container.11 with chest_minecart{Tags:["shrineDisplay"],display:{Name:'["",{"text":"000","bold":true,"italic":false,"color":"yellow","obfuscated":true},{"text":" Collect Trims","bold":true,"italic":false,"color":"yellow"},{"text":" 000","bold":true,"italic":false,"color":"yellow","obfuscated":true}]',Lore:['["",{"text":"Clicking this button will return any","italic":false}]','[{"text":"recovered trims from when you","italic":false}]','[{"text":"have died.","italic":false}]']},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:12b}]}] run item replace entity @s container.12 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}

execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:14b}]}] run item replace entity @s container.14 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
item replace entity @e[type=chest_minecart,tag=trimShrine] container.15 with grindstone{Tags:["shrineDisplay"],display:{Name:'["",{"text":"000","bold":true,"italic":false,"color":"red","obfuscated":true},{"text":" Remove Trims","bold":true,"italic":false,"color":"red"},{"text":" 000","bold":true,"italic":false,"color":"red","obfuscated":true}]',Lore:['["",{"text":"Place a trimmed armor piece into","italic":false}]','[{"text":"the shrine before pressing this","italic":false}]','[{"text":"button. It will remove the trim","italic":false}]','[{"text":"without destroying it or the armor","italic":false}]','[{"text":"piece.","italic":false}]']},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:16b}]}] run item replace entity @s container.16 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:17b}]}] run item replace entity @s container.17 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:18b}]}] run item replace entity @s container.18 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:19b}]}] run item replace entity @s container.19 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:20b}]}] run item replace entity @s container.20 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:21b}]}] run item replace entity @s container.21 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:22b}]}] run item replace entity @s container.22 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:23b}]}] run item replace entity @s container.23 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:24b}]}] run item replace entity @s container.24 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:25b}]}] run item replace entity @s container.25 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:26b}]}] run item replace entity @s container.26 with minecraft:gray_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":" ","italic":false}]'},HideFlags:63}

clear @a gray_stained_glass_pane{Tags:["shrineDisplay"]}

execute as @a store success score @s buttonRecovery run clear @s chest_minecart{Tags:["shrineDisplay"]}
execute as @a[scores={buttonRecovery=1..}] run function trimabilities:shrine/collect
execute as @a[scores={buttonRecovery=1..}] run scoreboard players reset @s buttonRecovery


execute as @a store success score @s buttonRemove run clear @s grindstone{Tags:["shrineDisplay"]}
execute as @a[scores={buttonRemove=1..}] run function trimabilities:shrine/remove
execute as @a[scores={buttonRemove=1..}] run scoreboard players reset @s buttonRemove



#[nbt={Items:[{Slot:0b,id:"minecraft:air"}]}]

data merge entity @e[type=chest_minecart,tag=trimShrine,limit=1] {Motion:[0.0d,0.0d,0.0d]}

execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run particle minecraft:enchant ~ ~1 ~ .5 .5 .5 0 15 normal @a[distance=..15]
execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run particle minecraft:enchanted_hit ~ ~ ~ 2 2 2 0 3 normal @a[distance=..30]
execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run particle minecraft:portal ~ ~ ~ 0 0 0 1 25 normal @a[distance=..15]
#execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run particle minecraft:poof ~ ~ ~ 4 4 4 0 1 normal @a


