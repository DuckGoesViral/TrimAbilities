
execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run fill ~3 ~.5 ~3 ~-3 ~4 ~-3 air destroy
execute at @e[type=chest_minecart,tag=trimShrine,limit=1] run setblock ~ ~ ~ light[level=10]

schedule function trimabilities:shrine/destroy 180s replace