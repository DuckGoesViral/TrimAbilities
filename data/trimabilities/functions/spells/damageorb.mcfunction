execute unless score @s mana matches 40.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Damage Orb!","color":"red"}]


execute at @s run summon item_display ~ ~2 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1141575257,1882212652,-1935865409,1178835309],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFiNzUzNjhkYjlhNzYzMzJkYzZkOWU1YzAwZTIzMmZkNDIzOGNhMWEzMDE5ZTdiNTIxZjE0ZmZjODMzMGU3YiJ9fX0="}]}}}},Tags:["damageOrb"]}

tag @s add damageOrbImmunity

#data modify entity @e[type=item_display,tag=damageOrb,limit=1,sort=nearest] Pos[1] set from entity @s Pos[1]
#execute as @e[type=item_display,tag=damageOrb,limit=1,sort=nearest] run tp @s ~ ~2 ~
#execute at @e[type=item_display,tag=damageOrb,limit=1,sort=nearest] run tp @e[type=item_display,tag=damageOrb,limit=1,sort=nearest] ~ ~ ~ #facing entity @s

