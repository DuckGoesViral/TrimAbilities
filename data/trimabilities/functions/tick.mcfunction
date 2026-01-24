#smp temp fixes

#vital overhealth fix
execute as @a[tag=unlockedVital,tag=!fixedVital] run attribute @s generic.max_health modifier remove 2-1-0-1-1
execute as @a[tag=unlockedVital,tag=!fixedVital] run attribute @s generic.max_health modifier remove 2-1-0-2-1
execute as @a[tag=unlockedVital,tag=!fixedVital] run attribute @s generic.max_health modifier remove 2-1-0-3-1
execute as @a[tag=unlockedVital,tag=!fixedVital] run attribute @s generic.max_health modifier remove 2-1-1-4-1
execute as @a[tag=unlockedVital,tag=!fixedVital] run tag @s add fixedVital









#abilities
function trimabilities:abilities1t


function trimabilities:border/tick



#note on attribute modifier uuids
#first digit is class (1-5, 5 being miscellaneous)
#second is trim (1-4 for classes, 1-5 for misc)
#third is whether it is a sub effect or full effect (0-1)
#fourth is sub level (1-4) 
#fifth is attribute type (1, 2, or 3 for health, speed, or damage)
# ex: 1-1-0-1-3




execute as @a[predicate=trimabilities:is_sneaking,tag=!isSneaking] run scoreboard players add @s sneakTrigger 1
execute as @a[predicate=trimabilities:is_sneaking,scores={sneakTrigger=1..}] run tag @s add isSneaking

execute as @a[predicate=trimabilities:not_sneaking] run tag @s remove isSneaking


execute as @a[predicate=trimabilities:not_sneaking,scores={sneakTimer=..4}] run scoreboard players add @s sneakTimer 1
execute as @a[predicate=trimabilities:is_sneaking] run scoreboard players set @s sneakTimer 0
execute as @a[predicate=trimabilities:not_sneaking,scores={sneakTimer=5..}] run scoreboard players set @s sneakTrigger 0




#clear @a[tag=!banTest] elytra
#clear @a[tag=!banTest] potion
#clear @a[tag=!banTest] splash_potion
#clear @a[tag=!banTest] totem_of_undying




execute as @a[scores={recoveryDeath=1..}] run function trimabilities:recovery/trimrecovery



execute if score placed trimShrine matches 1 run function trimabilities:shrine/display




# ARCHER POWER STUFF




scoreboard players add Timer subPower 1
execute if score Timer subPower matches 20.. as @a[nbt={SelectedItem:{id:"minecraft:bow"}}] run function trimabilities:subarrow_pre
execute if score Timer subPower matches 20.. run scoreboard players reset Timer subPower

execute as @a[nbt={SelectedItem:{tag:{added_power:0}}}] run item modify entity @s weapon.mainhand trimabilities:warn_clear
execute as @a[nbt={SelectedItem:{tag:{added_power:1}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{tag:{added_power:2}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{tag:{added_power:3}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power
execute as @a[nbt={SelectedItem:{tag:{added_power:4}}}] run item modify entity @s weapon.mainhand trimabilities:warn_power

execute as @a[nbt={SelectedItem:{tag:{Unbreakable:1b}}}] unless score @s ravine matches 4 run item modify entity @s weapon.mainhand trimabilities:ununbreakable
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Unbreakable:1b}}]}] unless score @s ravine matches 4 run item modify entity @s weapon.offhand trimabilities:ununbreakable
execute as @a[nbt={Inventory:[{Slot:100b,tag:{Unbreakable:1b}}]}] unless score @s ravine matches 4 run item modify entity @s armor.feet trimabilities:ununbreakable
execute as @a[nbt={Inventory:[{Slot:101b,tag:{Unbreakable:1b}}]}] unless score @s ravine matches 4 run item modify entity @s armor.legs trimabilities:ununbreakable
execute as @a[nbt={Inventory:[{Slot:102b,tag:{Unbreakable:1b}}]}] unless score @s ravine matches 4 run item modify entity @s armor.chest trimabilities:ununbreakable
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Unbreakable:1b}}]}] unless score @s ravine matches 4 run item modify entity @s armor.head trimabilities:ununbreakable

execute as @a[scores={grindstoneUse=1..}] run function trimabilities:subarrow_clear





#NETHER PORTAL LOCK OUT
scoreboard objectives add portalBan trigger
# execute at @a if score nether portalBan matches 1 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace nether_portal
execute as @a at @s if score nether portalBan matches 2 unless entity @s[x=0,y=60,z=0,distance=..100] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace nether_portal
execute as @a[scores={portalBan=1..}] run scoreboard players set nether portalBan 0
execute as @a[scores={portalBan=1..}] in minecraft:overworld run fill -17 65 33 -14 68 33 minecraft:nether_portal[axis=x]
execute as @a[scores={portalBan=1..}] in minecraft:overworld run summon minecraft:lightning_bolt -15.20 70.00 33.61
execute as @a[scores={portalBan=1..}] run scoreboard players reset @s portalBan

#POTION BAN
clear @a potion{Potion:"minecraft:strength"}
clear @a potion{Potion:"minecraft:strong_strength"}
clear @a potion{Potion:"minecraft:long_strength"}

clear @a splash_potion{Potion:"minecraft:strength"}
clear @a splash_potion{Potion:"minecraft:strong_strength"}
clear @a splash_potion{Potion:"minecraft:long_strength"}

clear @a lingering_potion{Potion:"minecraft:harming"}
clear @a lingering_potion{Potion:"minecraft:strong_harming"}

clear @a splash_potion{Potion:"minecraft:harming"}
clear @a splash_potion{Potion:"minecraft:strong_harming"}

clear @a potion{Potion:"minecraft:strong_swiftness"}
clear @a splash_potion{Potion:"minecraft:strong_swiftness"}
clear @a lingering_potion{Potion:"minecraft:strong_swiftness"}

clear @a splash_potion{Potion:"minecraft:weakness"}
clear @a splash_potion{Potion:"minecraft:long_weakness"}

clear @a lingering_potion{Potion:"minecraft:weakness"}
clear @a lingering_potion{Potion:"minecraft:long_weakness"}


clear @a tipped_arrow{Potion:"minecraft:strength"}
clear @a tipped_arrow{Potion:"minecraft:strong_strength"}
clear @a tipped_arrow{Potion:"minecraft:long_strength"}
clear @a tipped_arrow{Potion:"minecraft:strong_swiftness"}
clear @a tipped_arrow{Potion:"minecraft:harming"}
clear @a tipped_arrow{Potion:"minecraft:strong_harming"}
clear @a tipped_arrow{Potion:"minecraft:weakness"}
clear @a tipped_arrow{Potion:"minecraft:long_weakness"}

#kill
#give @s minecraft:stone_sword 1
#clear @s minecraft:stone_sword 0
#effect give @s minecraft:strength 10 0 true
#effect clear @s minecraft:strength
#attribute @s generic.attack_damage base set 6
#random value 1..10
#damage @s 5 fireball
#tp @e[type=zombie] ~ ~ ~ facing entity @p
#summon zombie ~ ~ ~
#tellraw @a {"text":"Hello, World!","color":"gold","bold":true}
#title @a title {"text":"Welcome to the Game!","color":"green","bold":true}
#setblock
#fill 
#tag




execute as @a[tag=mage,scores={sneakTrigger=2..}] run give @s written_book{pages:['["",{"text":"---","bold":true,"color":"dark_purple"},{"text":"SPELL BOOK","bold":true,"color":"light_purple"},{"text":"---","bold":true,"color":"dark_purple"},{"text":"\\n","color":"black"},{"text":"\\"The tome to end all tomes\\" - MageGoesViral","color":"gray"},{"text":"\\n\\n","color":"black"},{"text":"Quick Cast:","color":"black"},{"text":"\\n\\n","color":"black"},{"text":"  ","color":"green"},{"text":"[01]","color":"green","clickEvent":{"action":"run_command","value":"/trigger 2457-1364"}},{"text":" ","color":"green"},{"text":"[02]","color":"green","clickEvent":{"action":"run_command","value":"/trigger 6781-6345"}},{"text":" ","color":"green"},{"text":"[03]","color":"green","clickEvent":{"action":"run_command","value":"/trigger 0123-9678"}},{"text":" ","color":"green"},{"text":"[04]","color":"green","clickEvent":{"action":"change_page","value":"5"}},{"text":"\\n  ","color":"green"},{"text":"[05]","color":"green","clickEvent":{"action":"change_page","value":"6"}},{"text":" ","color":"green"},{"text":"[06]","color":"green","clickEvent":{"action":"change_page","value":"7"}},{"text":" ","color":"green"},{"text":"[07]","color":"green","clickEvent":{"action":"change_page","value":"8"}},{"text":" ","color":"green"},{"text":"[08]","color":"green","clickEvent":{"action":"change_page","value":"9"}},{"text":"\\n  ","color":"green"},{"text":"[09]","color":"green","clickEvent":{"action":"change_page","value":"10"}},{"text":" ","color":"green"},{"text":"[10]","color":"green","clickEvent":{"action":"change_page","value":"11"}},{"text":" ","color":"green"},{"text":"[11]","color":"green","clickEvent":{"action":"change_page","value":"12"}},{"text":" ","color":"green"},{"text":"[12]","color":"green","clickEvent":{"action":"change_page","value":"13"}},{"text":"\\n  ","color":"green"},{"text":"[13]","color":"green","clickEvent":{"action":"change_page","value":"14"}},{"text":" ","color":"green"},{"text":"[14]","color":"green","clickEvent":{"action":"change_page","value":"15"}},{"text":" ","color":"green"},{"text":"[15]","color":"green","clickEvent":{"action":"change_page","value":"16"}},{"text":" ","color":"green"},{"text":"[","color":"green","clickEvent":{"action":"change_page","value":"17"}},{"text":"00","obfuscated":true,"color":"green","clickEvent":{"action":"change_page","value":"17"}},{"text":"]","color":"green","clickEvent":{"action":"change_page","value":"17"}},{"text":"\\n","color":"black"},{"text":"----------------","bold":true,"color":"dark_purple"}]','["",{"text":"----------------","bold":true,"color":"gray"},{"text":"FIREBALL - 20 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Default Spell","color":"gray"},{"text":"\\nCreates a fireball in front of you which can be hit to shoot it at an enemy.\\n","color":"black"},{"text":"----------------","bold":true,"color":"gray"},{"text":"\\n\\n\\n\\n  ","color":"black"},{"text":" ","bold":true,"color":"green"},{"text":"---[CAST]---","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger 2457-1364"}}]','["",{"text":"----------------","bold":true,"color":"gray"},{"text":"DAMAGE ORB - 40 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Default Spell","color":"gray"},{"text":"\\nSpawns an orb which will travel about 15 blocks in a straight line. Deals 4 hearts per second.\\n","color":"black"},{"text":"----------------","bold":true,"color":"gray"},{"text":"\\n\\n\\n  ","color":"black"},{"text":" ","bold":true,"color":"green"},{"text":"---[CAST]---","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger 6781-6345"}}]','["",{"text":"----------------","bold":true,"color":"gray"},{"text":"HEAL POOL - 30 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Default Spell","color":"gray"},{"text":"\\nCreates a 5 block diameter healing circle which lasts for 20 seconds. Will give anyone in it Regeneration II.\\n","color":"black"},{"text":"----------------","bold":true,"color":"gray"},{"text":"\\n\\n  ","color":"black"},{"text":" ","bold":true,"color":"green"},{"text":"---[CAST]---","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger 0123-9678"}}]','["",{"text":"----------------","bold":true,"color":"blue"},{"text":"GROUND POUND - 20 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Unlocked at Level II","color":"blue"},{"text":"\\nWill launch away nearby players and mobs, dealing one heart of damage.\\n","color":"black"},{"text":"----------------","bold":true,"color":"blue"},{"text":"\\n\\n\\n \\u0020","color":"black"},{"text":" ---[CAST]---","bold":true,"color":"green"}]','["",{"text":"----------------","bold":true,"color":"dark_purple"},{"text":"BLOOD SACRIFICE - 0 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Unlocked at Level IV","color":"dark_purple"},{"text":"\\nCuts 2.5 hearts of damage in exchance for 10 mana instantly.\\n","color":"black"},{"text":"----------------","bold":true,"color":"dark_purple"},{"text":"\\n\\n\\n\\n \\u0020 ","color":"black"},{"text":"---[CAST]---","bold":true,"color":"green"}]','["",{"text":"----------------","bold":true,"color":"blue"},{"text":"MAGNET - 25 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Learned via Scroll","color":"blue"},{"text":"\\nWill drag in all entities around you for 10 seconds.\\n","color":"black"},{"text":"----------------","bold":true,"color":"blue"},{"text":"\\n\\n\\n\\n\\n \\u0020","color":"black"},{"text":" ---[CAST]---","bold":true,"color":"green"}]','["",{"text":"----------------","bold":true,"color":"dark_purple"},{"text":"HOMING MISSILES - 50 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Learned via Scroll","color":"dark_purple"},{"text":"\\nCreates 6 missiles which will fly towards the nearest enemy and will deal 4-8 hearts of damage on impact\\n","color":"black"},{"text":"----------------","bold":true,"color":"dark_purple"},{"text":"\\n\\n \\u0020","color":"black"},{"text":" ---[CAST]---","bold":true,"color":"green"}]','["",{"text":"----------------","bold":true,"color":"gold"},{"text":"FANGS OF THE EARTH","bold":true,"color":"black"},{"text":" - 50 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Learned via Scroll","color":"gold"},{"text":"\\nWill create fangs that sprout up from the ground in a ring. Each dealing 3 hearts of damage on contact.\\n","color":"black"},{"text":"----------------","bold":true,"color":"gold"},{"text":"\\n\\n  ","color":"black"},{"text":" ---[CAST]---","bold":true,"color":"green"}]','["",{"text":"----------------","bold":true,"color":"gray"},{"text":"FRANKENSTEIN - 15 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Raiser Exclusive","color":"gray"},{"text":"\\nWill summon a mob for souls; Zombie for 10, Skeleton for 20, Wither Skeleton for 50\\n","color":"black"},{"text":"----------------","bold":true,"color":"gray"},{"text":"\\n\\n","color":"black"},{"text":"    ","bold":true,"color":"green"},{"text":"--[ZOMBIE]--","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger 8259-8215"}},{"text":"\\n    ","bold":true,"color":"green"},{"text":"-[SKELETON]-","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger 8259-9671"}},{"text":"\\n","color":"black"},{"text":" ","bold":true,"color":"green"},{"text":"-[WITHER SKELE]-","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger 8259-2315"}}]','["",{"text":"----------------","bold":true,"color":"blue"},{"text":"CRYOMANCY ","bold":true,"color":"black"},{"text":"- 50 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Stray Exclusive","color":"blue"},{"text":"\\nCreates 2 Snow Golems with a freezing aura. They will speed you up but slow others down. Their snowballs also slow targets.\\n","color":"black"},{"text":"----------------","bold":true,"color":"blue"},{"text":"\\n\\n  ","color":"black"},{"text":" ---[CAST]---","bold":true,"color":"green"}]','["",{"text":"----------------","bold":true,"color":"blue"},{"text":"ICE CUBE - 70 Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Stray Exclusive","color":"blue"},{"text":"\\nWill instantly freeze nearby enemies in ice for 3 seconds.\\n","color":"black"},{"text":"----------------","bold":true,"color":"blue"},{"text":"\\n\\n\\n\\n\\n \\u0020","color":"black"},{"text":" ---[CAST]---","bold":true,"color":"green"}]','["",{"text":"\\n\\n\\n\\n\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u0020"},{"text":"TBD","bold":true}]','["",{"text":"\\n\\n\\n\\n\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u0020"},{"text":"TBD","bold":true}]','["",{"text":"\\n\\n\\n\\n\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u0020"},{"text":"TBD","bold":true}]','["",{"text":"\\n\\n\\n\\n\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u0020"},{"text":"TBD","bold":true}]','["",{"text":"-","bold":true,"obfuscated":true,"color":"gold"},{"text":"---","color":"dark_red","bold":true},{"text":"-","bold":true,"color":"blue"},{"text":"-","bold":true,"obfuscated":true,"color":"blue"},{"text":"-","bold":true,"obfuscated":true,"color":"gold"},{"text":"-","color":"light_purple","bold":true},{"text":"-","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"--","bold":true,"obfuscated":true,"color":"dark_green"},{"text":"-","bold":true,"obfuscated":true,"color":"dark_purple"},{"text":"-","color":"dark_purple","bold":true},{"text":"--","bold":true,"obfuscated":true,"color":"gold"},{"text":"-","bold":true,"obfuscated":true,"color":"gray"},{"text":"-","color":"gray","bold":true},{"text":"--","bold":true,"color":"black"},{"text":"-","bold":true,"color":"gold"},{"text":"MA","color":"black","bold":true},{"text":"G","bold":true,"obfuscated":true},{"text":"I","color":"black","bold":true},{"text":"CA","bold":true,"obfuscated":true},{"text":"L IMP","color":"black","bold":true},{"text":"LOSIO","bold":true,"obfuscated":true},{"text":"N - ","color":"black","bold":true},{"text":"000","bold":true,"obfuscated":true},{"text":" Mana","color":"black","bold":true},{"text":"\\n","color":"black"},{"text":"Cast via ","color":"gold"},{"text":"Scroll","obfuscated":true,"color":"gold"},{"text":"\\n","color":"black"},{"text":"H","obfuscated":true},{"text":"e","color":"black"},{"text":"l","obfuscated":true},{"text":"p. Spe","color":"black"},{"text":"ll","strikethrough":true},{"text":" to","color":"black"},{"text":"o","strikethrough":true},{"text":" str","color":"black"},{"text":"o","obfuscated":true},{"text":"n","color":"black"},{"text":"g","obfuscated":true},{"text":". U","color":"black"},{"text":"n","obfuscated":true},{"text":"c","color":"black"},{"text":"l","obfuscated":true},{"text":"ear o","color":"black"},{"text":"r","strikethrough":true},{"text":"igin. Could ","color":"black"},{"text":"n","obfuscated":true},{"text":"o","color":"black"},{"text":"t","obfuscated":true},{"text":" ","color":"black"},{"text":"c","strikethrough":true},{"text":"ontain. I","color":"black"},{"text":"n","obfuscated":true},{"text":"d","color":"black"},{"text":"e","obfuscated":true},{"text":"s","color":"black","strikethrough":true},{"text":"tructible. May ","color":"black"},{"text":"d","strikethrough":true},{"text":"estroy ","color":"black"},{"text":"r","obfuscated":true},{"text":"e","color":"black"},{"text":"s","obfuscated":true},{"text":"t of world. Hi","color":"black"},{"text":"d","obfuscated":true},{"text":"d","color":"black"},{"text":"e","obfuscated":true},{"text":"n","color":"black","strikethrough":true},{"text":". ","color":"black"},{"text":"I","strikethrough":true},{"text":"n sa","color":"black"},{"text":"f","strikethrough":true},{"text":"e place. Please do not use.\\n","color":"black"},{"text":"---","bold":true,"obfuscated":true,"color":"gold"},{"text":"-","bold":true,"obfuscated":true,"color":"aqua"},{"text":"-","color":"aqua","bold":true},{"text":"---","bold":true,"color":"dark_purple"},{"text":"-","bold":true,"obfuscated":true,"color":"dark_purple"},{"text":"-","color":"dark_purple","bold":true},{"text":"----","bold":true,"color":"blue"},{"text":"-","bold":true,"obfuscated":true,"color":"blue"},{"text":"-","bold":true,"obfuscated":true,"color":"gold"},{"text":"---","bold":true,"obfuscated":true,"color":"green"},{"text":"-","color":"blue","bold":true},{"text":"\\n ","color":"black"}]'],title:"Summoned Spellbook",author:MageGoesViral,generation:3}
execute as @a[tag=mage,scores={sneakTrigger=2..}] run scoreboard players reset @s sneakTrigger

