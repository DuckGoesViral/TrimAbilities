scoreboard players set placed trimShrine 1

$summon chest_minecart 0 $(y) 0 {Tags:["trimShrine"],CustomName:'[{"text":"Trim Shrine","color":"dark_purple"}]',CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1b}
$summon marker 0 $(y) 0 {Tags:["trimShrine"],Invulnerable:1b}

execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run fill ~3 ~-.5 ~3 ~-3 ~-.5 ~-3 structure_block
execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run fill ~3 ~.5 ~3 ~-3 ~4 ~-3 air destroy
execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run setblock ~ ~ ~ light[level=10]

execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run summon item_display ~ ~1.6 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1339075773,1608468068,-1918928820,1520869671],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2RlMjk4NGJkNTY0NWY5ZDg2NWE5ZThjNjkzNTJhZDRlMDEwOWE1YjM4ZjNhNDI0M2U0ZDZjYjkyYzgzMzMifX19"}]}}}}}

function trimabilities:shrine/destroy