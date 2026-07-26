
execute unless entity @e[type=chest_minecart,tag=trimShrine] at @e[type=marker,tag=trimShrine] run summon chest_minecart ~ ~ ~ {CustomName:[{text:"Trim Shrine",color:dark_purple}],CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["trimShrine"]}


execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:0b}]}] run item replace entity @s container.0 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:1b}]}] run item replace entity @s container.1 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

item replace entity @e[type=chest_minecart,tag=trimShrine] container.2 with minecraft:chest_minecart[custom_name=["",{"text":" ","italic":false},{"text":"000","bold":true,"italic":false,"color":"yellow","obfuscated":true},{"text":" Collect Trims","bold":true,"italic":false,"color":"yellow"},{"text":" 000","bold":true,"italic":false,"color":"yellow","obfuscated":true}],lore=[[{"text":"Clicking this button will return any","italic":false}],[{"text":"recovered trims from when you","italic":false}],[{"text":"have died.","italic":false}]],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:3b}]}] run item replace entity @s container.3 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:4b}]}] run item replace entity @s container.4 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:5b}]}] run item replace entity @s container.5 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

item replace entity @e[type=chest_minecart,tag=trimShrine] container.6 with minecraft:grindstone[custom_name=["",{"text":" ","italic":false},{"text":"000","bold":true,"italic":false,"color":"red","obfuscated":true},{"text":" Remove Trims","bold":true,"italic":false,"color":"red"},{"text":" 000","bold":true,"italic":false,"color":"red","obfuscated":true}],lore=[[{"text":"Place a trimmed armor piece into","italic":false}],[{"text":"the shrine before pressing this","italic":false}],[{"text":"button. It will remove the trim","italic":false}],[{"text":"without destroying it or the armor","italic":false}],[{"text":"piece.","italic":false}]],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:7b}]}] run item replace entity @s container.7 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:8b}]}] run item replace entity @s container.8 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:9b}]}] run item replace entity @s container.9 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

item replace entity @e[type=chest_minecart,tag=trimShrine] container.10 with minecraft:hopper_minecart[custom_name=["",{"text":" ","italic":false},{"text":"000","bold":true,"italic":false,"color":"dark_green","obfuscated":true},{"text":" Deposit Essence","bold":true,"italic":false,"color":"dark_green"},{"text":" 000","bold":true,"italic":false,"color":"dark_green","obfuscated":true}],lore=[[{"text":"Deposit any trim essence from","italic":false}],[{"text":"your inventory into the shrine.","italic":false}]],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:11b}]}] run item replace entity @s container.11 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:12b}]}] run item replace entity @s container.12 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

#item replace entity @e[type=chest_minecart,tag=trimShrine] container.13 with red_stained_glass_pane{Tags:["shrineDisplay"],display:{Name:'["",{"text":"000","bold":true,"italic":false,"color":"yellow","obfuscated":true},{"text":" Collect Trims","bold":true,"italic":false,"color":"yellow"},{"text":" 000","bold":true,"italic":false,"color":"yellow","obfuscated":true}]',Lore:['["",{"text":"Clicking this button will return any","italic":false}]','[{"text":"recovered trims from when you","italic":false}]','[{"text":"have died.","italic":false}]']},HideFlags:63}

execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:14b}]}] run item replace entity @s container.14 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:15b}]}] run item replace entity @s container.15 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

item replace entity @e[type=chest_minecart,tag=trimShrine] container.16 with minecraft:dropper[custom_name=["",{"text":" ","italic":false},{"text":"000","bold":true,"italic":false,"color":"dark_red","obfuscated":true},{"text":" Withdraw Essence","bold":true,"italic":false,"color":"dark_red"},{"text":" 000","bold":true,"italic":false,"color":"dark_red","obfuscated":true}],lore=[[{"text":"Withdraw trim essence from the","italic":false}],[{"text":"shrine into your inventory.","italic":false}]],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:17b}]}] run item replace entity @s container.17 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:18b}]}] run item replace entity @s container.18 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:19b}]}] run item replace entity @s container.19 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

item replace entity @e[type=chest_minecart,tag=trimShrine] container.20 with minecraft:cauldron[custom_name=["",{"text":" ","italic":false},{"text":"000","bold":true,"italic":false,"color":"green","obfuscated":true},{"text":" Insure Trims","bold":true,"italic":false,"color":"green"},{"text":" 000","bold":true,"italic":false,"color":"green","obfuscated":true}],lore=[[{"text":"Click this button to spend trim essence","italic":false}],[{"text":"for your trim insurance. This","italic":false}],[{"text":"allows you to keep trims after your","italic":false}],[{"text":"death.","italic":false}]],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:21b}]}] run item replace entity @s container.21 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:22b}]}] run item replace entity @s container.22 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:23b}]}] run item replace entity @s container.23 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

item replace entity @e[type=chest_minecart,tag=trimShrine] container.24 with minecraft:campfire[custom_name=["",{"text":" ","italic":false},{"text":"000","bold":true,"italic":false,"color":"light_purple","obfuscated":true},{"text":" Salvage Trims","bold":true,"italic":false,"color":"light_purple"},{"text":" 000","bold":true,"italic":false,"color":"light_purple","obfuscated":true}],lore=[[{"text":"Place an armor trim into the","italic":false}],[{"text":"shrine and click this button to","italic":false}],[{"text":"gain trim essence, destroying the trim in","italic":false}],[{"text":"the process. The amount of essence depends","italic":false}],[{"text":"on the trim's tier.","italic":false}]],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]

execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:25b}]}] run item replace entity @s container.25 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute as @e[type=chest_minecart,tag=trimShrine] if entity @s[nbt=!{Items:[{Slot:26b}]}] run item replace entity @s container.26 with minecraft:gray_stained_glass_pane[custom_name=[{"text":" ","italic":false}],custom_data={shrineDisplay:1b},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]


clear @a minecraft:gray_stained_glass_pane[custom_data={shrineDisplay:1b}]

execute as @a store success score @s buttonRecovery run clear @a chest_minecart[custom_data={shrineDisplay:1b}]
execute as @a[scores={buttonRecovery=1..}] run function trimabilities:shrine/collect
execute as @a[scores={buttonRecovery=1..}] run scoreboard players reset @s buttonRecovery


execute as @a store success score @s buttonRemove run clear @s grindstone[custom_data={shrineDisplay:1b}]
execute as @a[scores={buttonRemove=1..}] run function trimabilities:shrine/remove
execute as @a[scores={buttonRemove=1..}] run scoreboard players reset @s buttonRemove


execute as @a store success score @s buttonInsure run clear @s cauldron[custom_data={shrineDisplay:1b}]
execute as @a[scores={buttonInsure=1..}] run function trimabilities:shrine/insure
execute as @a[scores={buttonInsure=1..}] run scoreboard players reset @s buttonInsure


execute as @a store success score @s buttonSalvage run clear @s campfire[custom_data={shrineDisplay:1b}]
execute as @a[scores={buttonSalvage=1..}] run function trimabilities:shrine/salvage
execute as @a[scores={buttonSalvage=1..}] run scoreboard players reset @s buttonSalvage


execute as @a store success score @s buttonDeposit run clear @s hopper_minecart[custom_data={shrineDisplay:1b}]
execute as @a[scores={buttonDeposit=1..}] run function trimabilities:shrine/deposit
execute as @a[scores={buttonDeposit=1..}] run scoreboard players reset @s buttonDeposit



execute as @a store success score @s buttonWithdraw run clear @s dropper[custom_data={shrineDisplay:1b}]
execute as @a[scores={buttonWithdraw=1..}] run function trimabilities:shrine/withdraw
execute as @a[scores={buttonWithdraw=1..}] run scoreboard players reset @s buttonWithdraw





#[nbt={Items:[{Slot:0b,id:"minecraft:air"}]}]

data merge entity @e[type=chest_minecart,tag=trimShrine,limit=1] {Motion:[0.0d,0.0d,0.0d]}

execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run particle minecraft:enchant ~ ~1 ~ .5 .5 .5 0 15 normal @a[distance=..15]
execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run particle minecraft:enchanted_hit ~ ~ ~ 2 2 2 0 3 normal @a[distance=..30]
execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run particle minecraft:portal ~ ~ ~ 0 0 0 1 25 normal @a[distance=..15]
#execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run particle minecraft:poof ~ ~ ~ 4 4 4 0 1 normal @a


