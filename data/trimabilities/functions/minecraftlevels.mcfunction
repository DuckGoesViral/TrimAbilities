execute as @a[scores={minecraftLevel=0..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl0


execute as @a[scores={minecraftLevel=100..},tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl0
execute as @a[scores={minecraftLevel=100..},tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl1go
execute as @a[scores={minecraftLevel=100..},tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl1
execute if entity @a[scores={minecraftLevel=100..},tag=mcLvl1go] as @a[scores={minecraftLevel=100..},tag=mcLvl1go] at @s run function trimabilities:mclvl/1
execute as @a[tag=mcLvl1go] run tag @s remove mcLvl1go

execute as @a[scores={minecraftLevel=250..},tag=!mcLvl0,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl1
execute as @a[scores={minecraftLevel=250..},tag=!mcLvl0,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl2go
execute as @a[scores={minecraftLevel=250..},tag=!mcLvl0,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl2
execute if entity @a[scores={minecraftLevel=250..},tag=mcLvl2go] as @a[scores={minecraftLevel=250..},tag=mcLvl2go] at @s run function trimabilities:mclvl/2
execute as @a[tag=mcLvl2go] run tag @s remove mcLvl2go

execute as @a[scores={minecraftLevel=1000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl2
execute as @a[scores={minecraftLevel=1000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl3go
execute as @a[scores={minecraftLevel=1000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl3
execute as @a[scores={minecraftLevel=1000..},tag=mcLvl3go,tag=!mcDuneGive] run scoreboard players add @s progressDune 1
execute as @a[scores={minecraftLevel=1000..},tag=mcLvl3go,tag=!mcDuneGive] run tag @s add mcDuneGive
execute as @a[scores={minecraftLevel=1000..},tag=mcLvl3go,tag=!mcWildGive] run scoreboard players add @s progressWild 1
execute as @a[scores={minecraftLevel=1000..},tag=mcLvl3go,tag=!mcWildGive] run tag @s add mcWildGive
execute as @a[scores={minecraftLevel=1000..},tag=mcLvl3go,tag=!mcVitalGive] run scoreboard players add @s progressVital 1
execute as @a[scores={minecraftLevel=1000..},tag=mcLvl3go,tag=!mcVitalGive] run tag @s add mcVitalGive
execute as @a[scores={minecraftLevel=1000..},tag=mcLvl3go,tag=!mcStrayGive] run scoreboard players add @s progressStray 1
execute as @a[scores={minecraftLevel=1000..},tag=mcLvl3go,tag=!mcStrayGive] run tag @s add mcStrayGive
execute if entity @a[scores={minecraftLevel=1000..},tag=mcLvl3go] as @a[scores={minecraftLevel=1000..},tag=mcLvl3go] at @s run function trimabilities:mclvl/3
execute as @a[tag=mcLvl3go] run tag @s remove mcLvl3go

execute as @a[scores={minecraftLevel=2500..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl3
execute as @a[scores={minecraftLevel=2500..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl4go
execute as @a[scores={minecraftLevel=2500..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl4
execute as @a[scores={minecraftLevel=2500..},tag=mcLvl4go,tag=!mcTideGive] run scoreboard players add @s progressTide 1
execute as @a[scores={minecraftLevel=2500..},tag=mcLvl4go,tag=!mcTideGive] run tag @s add mcTideGive
execute if entity @a[scores={minecraftLevel=2500..},tag=mcLvl4go] as @a[scores={minecraftLevel=2500..},tag=mcLvl4go] at @s run function trimabilities:mclvl/4
execute as @a[tag=mcLvl4go] run tag @s remove mcLvl4go

execute as @a[scores={minecraftLevel=5000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl4
execute as @a[scores={minecraftLevel=5000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl5go
execute as @a[scores={minecraftLevel=5000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl5

execute as @a[scores={minecraftLevel=5000..},tag=mcLvl5go,tag=!mcRibGive] run scoreboard players add @s progressRib 1
execute as @a[scores={minecraftLevel=5000..},tag=mcLvl5go,tag=!mcRibGive] run tag @s add mcRibGive
execute if entity @a[scores={minecraftLevel=5000..},tag=mcLvl5go] as @a[scores={minecraftLevel=5000..},tag=mcLvl5go] at @s run function trimabilities:mclvl/5
execute as @a[tag=mcLvl5go] run tag @s remove mcLvl5go

execute as @a[scores={minecraftLevel=10000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl5
execute as @a[scores={minecraftLevel=10000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl6go
execute as @a[scores={minecraftLevel=10000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl6
execute as @a[scores={minecraftLevel=10000..},tag=mcLvl6go,tag=!mcSnoutGive] run scoreboard players add @s progressSnout 1
execute as @a[scores={minecraftLevel=10000..},tag=mcLvl6go,tag=!mcSnoutGive] run tag @s add mcSnoutGive
execute as @a[scores={minecraftLevel=10000..},tag=mcLvl6go,tag=!mcEyeGive] run scoreboard players add @s progressEye 1
execute as @a[scores={minecraftLevel=10000..},tag=mcLvl6go,tag=!mcEyeGive] run tag @s add mcEyeGive
execute as @a[scores={minecraftLevel=10000..},tag=mcLvl6go,tag=!mcWardGive] run scoreboard players add @s progressWard 1
execute as @a[scores={minecraftLevel=10000..},tag=mcLvl6go,tag=!mcWardGive] run tag @s add mcWardGive
execute if entity @a[scores={minecraftLevel=10000..},tag=mcLvl6go] as @a[scores={minecraftLevel=10000..},tag=mcLvl6go] at @s run function trimabilities:mclvl/6
execute as @a[tag=mcLvl6go] run tag @s remove mcLvl6go

execute as @a[scores={minecraftLevel=17500..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl6
execute as @a[scores={minecraftLevel=17500..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl7go
execute as @a[scores={minecraftLevel=17500..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl7
execute if entity @a[scores={minecraftLevel=17500..},tag=mcLvl7go] as @a[scores={minecraftLevel=17500..},tag=mcLvl7go] at @s run function trimabilities:mclvl/7
execute as @a[tag=mcLvl7go] run tag @s remove mcLvl7go

execute as @a[scores={minecraftLevel=25000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl7
execute as @a[scores={minecraftLevel=25000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl8go
execute as @a[scores={minecraftLevel=25000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl8,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl8
execute as @a[scores={minecraftLevel=25000..},tag=mcLvl8go,tag=!mcSpireGive] run scoreboard players add @s progressSpire 1
execute as @a[scores={minecraftLevel=25000..},tag=mcLvl8go,tag=!mcSpireGive] run tag @s add mcSpireGive
execute as @a[scores={minecraftLevel=25000..},tag=mcLvl8go,tag=!mcSilenceGive] run scoreboard players add @s progressSilence 1
execute as @a[scores={minecraftLevel=25000..},tag=mcLvl8go,tag=!mcSilenceGive] run tag @s add mcSilenceGive
execute as @a[scores={minecraftLevel=25000..},tag=mcLvl8go,tag=!mcSentryGive] run scoreboard players add @s progressSentry 1
execute as @a[scores={minecraftLevel=25000..},tag=mcLvl8go,tag=!mcSentryGive] run tag @s add mcSentryGive
execute as @a[scores={minecraftLevel=25000..},tag=mcLvl8go,tag=!mcStormGive] run scoreboard players add @s progressStorm 1
execute as @a[scores={minecraftLevel=25000..},tag=mcLvl8go,tag=!mcStormGive] run tag @s add mcStormGive
execute if entity @a[scores={minecraftLevel=25000..},tag=mcLvl8go] as @a[scores={minecraftLevel=25000..},tag=mcLvl8go] at @s run function trimabilities:mclvl/8
execute as @a[tag=mcLvl8go] run tag @s remove mcLvl8go

execute as @a[scores={minecraftLevel=35000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl9,tag=!mcLvl10] run tag @s remove mcLvl8
execute as @a[scores={minecraftLevel=35000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl9go
execute as @a[scores={minecraftLevel=35000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl9,tag=!mcLvl10] run tag @s add mcLvl9
execute if entity @a[scores={minecraftLevel=35000..},tag=mcLvl9go] as @a[scores={minecraftLevel=35000..},tag=mcLvl9go] at @s run function trimabilities:mclvl/9
execute as @a[tag=mcLvl9go] run tag @s remove mcLvl9go

execute as @a[scores={minecraftLevel=50000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl10] run tag @s remove mcLvl9
execute as @a[scores={minecraftLevel=50000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl10] run tag @s add mcLvl10go
execute as @a[scores={minecraftLevel=50000..},tag=!mcLvl0,tag=!mcLvl1,tag=!mcLvl2,tag=!mcLvl3,tag=!mcLvl4,tag=!mcLvl5,tag=!mcLvl6,tag=!mcLvl7,tag=!mcLvl8,tag=!mcLvl10] run tag @s add mcLvl10
execute if entity @a[scores={minecraftLevel=50000..},tag=mcLvl10go] as @a[scores={minecraftLevel=50000..},tag=mcLvl10go] at @s run function trimabilities:mclvl/10
execute as @a[tag=mcLvl10go] run tag @s remove mcLvl10go


schedule function trimabilities:minecraftlevels 10t