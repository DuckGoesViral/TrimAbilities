execute unless score @s mana matches 40.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 40.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Damage Orb!","color":"red","bold": true}]

scoreboard players remove @s mana 40

execute at @s run summon armor_stand ^ ^ ^1 {Tags:["damageOrbMarker"],NoGravity:1b,Invisible:1b,Invulnerable:1b}

execute at @s run summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1141575257,1882212652,-1935865409,1178835309],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFiNzUzNjhkYjlhNzYzMzJkYzZkOWU1YzAwZTIzMmZkNDIzOGNhMWEzMDE5ZTdiNTIxZjE0ZmZjODMzMGU3YiJ9fX0="}]}}}},Tags:["damageOrb"]}

tag @s add damageOrbImmunity

data modify entity @e[type=armor_stand,tag=damageOrbMarker,limit=1,sort=nearest] Pos[1] set from entity @s Pos[1]
#execute as @e[type=item_display,tag=damageOrb,limit=1,sort=nearest] run tp @s ~ ~2 ~
execute at @e[type=armor_stand,tag=damageOrbMarker,limit=1,sort=nearest] run tp @e[type=armor_stand,tag=damageOrbMarker,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 40 normal @a[distance=..15]



execute as @s[tag=mLvl0] run title @s actionbar ["",{"text":"+4","color":"dark_aqua"},{"text":" Mage xp | Level 1 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 100) ","color":"dark_aqua"}]
execute as @s[tag=mLvl1] run title @s actionbar ["",{"text":"+4","color":"dark_aqua"},{"text":" Mage xp | Level 2 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 250) ","color":"dark_aqua"}]
execute as @s[tag=mLvl2] run title @s actionbar ["",{"text":"+4","color":"dark_aqua"},{"text":" Mage xp | Level 3 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 1000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl3] run title @s actionbar ["",{"text":"+4","color":"dark_aqua"},{"text":" Mage xp | Level 4 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 2500) ","color":"dark_aqua"}]
execute as @s[tag=mLvl4] run title @s actionbar ["",{"text":"+4","color":"dark_aqua"},{"text":" Mage xp | Level 5 Progress ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":" / 5000) ","color":"dark_aqua"}]
execute as @s[tag=mLvl5] run title @s actionbar ["",{"text":"+4","color":"dark_aqua"},{"text":" Mage xp | Level 5 ","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mageLevel"},"color":"dark_aqua"},{"text":") ","color":"dark_aqua"}]
scoreboard players add @s xpDelay 1