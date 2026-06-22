playsound minecraft:entity.generic.explode ambient @a[distance=..20] ~ ~ ~
particle minecraft:explosion ~ ~ ~ 1 1 1 0 25
damage @e[type=!arrow,type=!experience_orb,type=!item,distance=..4,limit=1,sort=nearest] 7 explosion
damage @e[type=!arrow,type=!experience_orb,type=!item,distance=..3,limit=1,sort=nearest] 12 explosion
damage @e[type=!arrow,type=!experience_orb,type=!item,distance=..2,limit=1,sort=nearest] 18 explosion
damage @e[type=!arrow,type=!experience_orb,type=!item,distance=..1,limit=1,sort=nearest] 25 explosion
damage @e[type=!arrow,type=!experience_orb,type=!item,distance=..0,limit=1,sort=nearest] 30 explosion

