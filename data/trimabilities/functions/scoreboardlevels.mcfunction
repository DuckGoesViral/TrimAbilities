execute as @a[tag=mcLvl0] run scoreboard players set @s mcLvl 0
execute as @a[tag=mcLvl1] run scoreboard players set @s mcLvl 1
execute as @a[tag=mcLvl2] run scoreboard players set @s mcLvl 2
execute as @a[tag=mcLvl3] run scoreboard players set @s mcLvl 3
execute as @a[tag=mcLvl4] run scoreboard players set @s mcLvl 4
execute as @a[tag=mcLvl5] run scoreboard players set @s mcLvl 5
execute as @a[tag=mcLvl6] run scoreboard players set @s mcLvl 6
execute as @a[tag=mcLvl7] run scoreboard players set @s mcLvl 7
execute as @a[tag=mcLvl8] run scoreboard players set @s mcLvl 8
execute as @a[tag=mcLvl9] run scoreboard players set @s mcLvl 9
execute as @a[tag=mcLvl10] run scoreboard players set @s mcLvl 10

execute as @a[tag=wLvl0] run scoreboard players set @s wLvl 0
execute as @a[tag=wLvl1] run scoreboard players set @s wLvl 1
execute as @a[tag=wLvl2] run scoreboard players set @s wLvl 2
execute as @a[tag=wLvl3] run scoreboard players set @s wLvl 3
execute as @a[tag=wLvl4] run scoreboard players set @s wLvl 4
execute as @a[tag=wLvl5] run scoreboard players set @s wLvl 5

execute as @a[tag=tLvl0] run scoreboard players set @s tLvl 0
execute as @a[tag=tLvl1] run scoreboard players set @s tLvl 1
execute as @a[tag=tLvl2] run scoreboard players set @s tLvl 2
execute as @a[tag=tLvl3] run scoreboard players set @s tLvl 3
execute as @a[tag=tLvl4] run scoreboard players set @s tLvl 4
execute as @a[tag=tLvl5] run scoreboard players set @s tLvl 5

execute as @a[tag=aLvl0] run scoreboard players set @s aLvl 0
execute as @a[tag=aLvl1] run scoreboard players set @s aLvl 1
execute as @a[tag=aLvl2] run scoreboard players set @s aLvl 2
execute as @a[tag=aLvl3] run scoreboard players set @s aLvl 3
execute as @a[tag=aLvl4] run scoreboard players set @s aLvl 4
execute as @a[tag=aLvl5] run scoreboard players set @s aLvl 5

execute as @a[tag=mLvl0] run scoreboard players set @s mLvl 0
execute as @a[tag=mLvl1] run scoreboard players set @s mLvl 1
execute as @a[tag=mLvl2] run scoreboard players set @s mLvl 2
execute as @a[tag=mLvl3] run scoreboard players set @s mLvl 3
execute as @a[tag=mLvl4] run scoreboard players set @s mLvl 4
execute as @a[tag=mLvl5] run scoreboard players set @s mLvl 5

scoreboard objectives add mLvl dummy

schedule function trimabilities:scoreboardlevels 10s replace