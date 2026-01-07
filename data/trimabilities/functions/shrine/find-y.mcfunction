execute unless score started trimShrine matches 1 run scoreboard players set started trimShrine 1
execute unless entity @e[type=armor_stand,tag=y-finder_Shrine] run summon armor_stand 0 255 0 {Tags:["y-finder_Shrine"],Motion:[0.0d,-10.0d,0.0d],Invisible:1b,Invulnerable:1b}

execute at @e[type=armor_stand,tag=y-finder_Shrine,limit=1] if block ~ ~-0.5 ~ air run return run schedule function trimabilities:shrine/find-y 1t


execute as @e[type=armor_stand,tag=y-finder_Shrine,limit=1] at @s store result storage trimabilities:shrine coords.y int 1 run data get entity @s Pos[1]

kill @e[type=armor_stand,tag=y-finder_Shrine]

execute unless score placed trimShrine matches 1 run function trimabilities:shrine/place with storage trimabilities:shrine coords
