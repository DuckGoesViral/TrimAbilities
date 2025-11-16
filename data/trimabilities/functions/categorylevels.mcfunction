#Warrior Level
execute as @a[scores={warriorLevel=0..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl2,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl0

execute as @a[scores={warriorLevel=250..},tag=!wLvl1,tag=!wLvl2,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s remove wLvl0
execute as @a[scores={warriorLevel=250..},tag=!wLvl1,tag=!wLvl2,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl1go
execute as @a[scores={warriorLevel=250..},tag=!wLvl1,tag=!wLvl2,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl1
execute as @a[scores={warriorLevel=250..},tag=wLvl1go] at @s run function trimabilities:clvl/w1
execute as @a[tag=wLvl1go] run tag @s remove wLvl1go

execute as @a[scores={warriorLevel=1000..},tag=!wLvl0,tag=!wLvl2,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s remove wLvl1
execute as @a[scores={warriorLevel=1000..},tag=!wLvl0,tag=!wLvl2,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl2go
execute as @a[scores={warriorLevel=1000..},tag=!wLvl0,tag=!wLvl2,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl2
execute as @a[scores={warriorLevel=1000..},tag=wLvl2go,tag=!wDuneGive] run scoreboard players add @s progressDune 1
execute as @a[scores={warriorLevel=1000..},tag=wLvl2go,tag=!wDuneGive] run tag @s add wDuneGive
execute as @a[scores={warriorLevel=1000..},tag=wLvl2go] at @s run function trimabilities:clvl/w2
execute as @a[tag=wLvl2go] run tag @s remove wLvl2go

execute as @a[scores={warriorLevel=2500..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s remove wLvl2
execute as @a[scores={warriorLevel=2500..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl3go
execute as @a[scores={warriorLevel=2500..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl3,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl3
execute as @a[scores={warriorLevel=2500..},tag=wLvl3go,tag=!wSnoutGive] run scoreboard players add @s progressSnout 1
execute as @a[scores={warriorLevel=2500..},tag=wLvl3go,tag=!wSnoutGive] run tag @s add wSnoutGive
execute as @a[scores={warriorLevel=2500..},tag=wLvl3go] at @s run function trimabilities:clvl/w3
execute as @a[tag=wLvl3go] run tag @s remove wLvl3go

execute as @a[scores={warriorLevel=5000..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl2,tag=!wLvl4,tag=!wLvl5] run tag @s remove wLvl3
execute as @a[scores={warriorLevel=5000..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl2,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl4go
execute as @a[scores={warriorLevel=5000..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl2,tag=!wLvl4,tag=!wLvl5] run tag @s add wLvl4
execute as @a[scores={warriorLevel=5000..},tag=wLvl4go] at @s run function trimabilities:clvl/w4
execute as @a[tag=wLvl4go] run tag @s remove wLvl4go

execute as @a[scores={warriorLevel=10000..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl2,tag=!wLvl3,tag=!wLvl5] run tag @s remove wLvl4
execute as @a[scores={warriorLevel=10000..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl2,tag=!wLvl3,tag=!wLvl5] run tag @s add wLvl5go
execute as @a[scores={warriorLevel=10000..},tag=!wLvl0,tag=!wLvl1,tag=!wLvl2,tag=!wLvl3,tag=!wLvl5] run tag @s add wLvl5
execute as @a[scores={warriorLevel=10000..},tag=wLvl5go,tag=!wSilenceGive] run scoreboard players add @s progressSilence 1
execute as @a[scores={warriorLevel=10000..},tag=wLvl5go,tag=!wSilenceGive] run tag @s add wSilenceGive
execute as @a[scores={warriorLevel=10000..},tag=wLvl5go] at @s run function trimabilities:clvl/w5
execute as @a[tag=wLvl5go] run tag @s remove wLvl5go


#Tank Level
execute as @a[scores={tankLevel=0..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl2,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl0

execute as @a[scores={tankLevel=100..},tag=!tLvl1,tag=!tLvl2,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s remove tLvl0
execute as @a[scores={tankLevel=100..},tag=!tLvl1,tag=!tLvl2,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl1go
execute as @a[scores={tankLevel=100..},tag=!tLvl1,tag=!tLvl2,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl1
execute as @a[scores={tankLevel=100..},tag=tLvl1go] at @s run function trimabilities:clvl/t1
execute as @a[tag=tLvl1go] run tag @s remove tLvl1go

execute as @a[scores={tankLevel=250..},tag=!tLvl0,tag=!tLvl2,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s remove tLvl1
execute as @a[scores={tankLevel=250..},tag=!tLvl0,tag=!tLvl2,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl2go
execute as @a[scores={tankLevel=250..},tag=!tLvl0,tag=!tLvl2,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl2
execute as @a[scores={tankLevel=250..},tag=tLvl2go] at @s run function trimabilities:clvl/t2
execute as @a[tag=tLvl2go] run tag @s remove tLvl2go

execute as @a[scores={tankLevel=1000..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s remove tLvl2
execute as @a[scores={tankLevel=1000..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl3go
execute as @a[scores={tankLevel=1000..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl3,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl3
execute as @a[scores={tankLevel=1000..},tag=tLvl3go,tag=!tSpireGive] run scoreboard players add @s progressSpire 1
execute as @a[scores={tankLevel=1000..},tag=tLvl3go,tag=!tSpireGive] run tag @s add tSpireGive
execute as @a[scores={tankLevel=1000..},tag=tLvl3go] at @s run function trimabilities:clvl/t3
execute as @a[tag=tLvl3go] run tag @s remove tLvl3go

execute as @a[scores={tankLevel=2500..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl2,tag=!tLvl4,tag=!tLvl5] run tag @s remove tLvl3
execute as @a[scores={tankLevel=2500..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl2,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl4go
execute as @a[scores={tankLevel=2500..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl2,tag=!tLvl4,tag=!tLvl5] run tag @s add tLvl4
execute as @a[scores={tankLevel=2500..},tag=tLvl4go] at @s run function trimabilities:clvl/t4
execute as @a[tag=tLvl4go] run tag @s remove tLvl4go

execute as @a[scores={tankLevel=5000..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl2,tag=!tLvl3,tag=!tLvl5] run tag @s remove tLvl4
execute as @a[scores={tankLevel=5000..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl2,tag=!tLvl3,tag=!tLvl5] run tag @s add tLvl5go
execute as @a[scores={tankLevel=5000..},tag=!tLvl0,tag=!tLvl1,tag=!tLvl2,tag=!tLvl3,tag=!tLvl5] run tag @s add tLvl5
execute as @a[scores={tankLevel=5000..},tag=tLvl5go,tag=!tWardGive] run scoreboard players add @s progressWard 1
execute as @a[scores={tankLevel=5000..},tag=tLvl5go,tag=!tWardGive] run tag @s add tWardGive
execute as @a[scores={tankLevel=5000..},tag=tLvl5go] at @s run function trimabilities:clvl/t5
execute as @a[tag=tLvl5go] run tag @s remove tLvl5go

#Archer Level
execute as @a[scores={archerLevel=0..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl2,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl0

execute as @a[scores={archerLevel=100..},tag=!aLvl1,tag=!aLvl2,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s remove aLvl0
execute as @a[scores={archerLevel=100..},tag=!aLvl1,tag=!aLvl2,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl1go
execute as @a[scores={archerLevel=100..},tag=!aLvl1,tag=!aLvl2,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl1
execute as @a[scores={archerLevel=100..},tag=aLvl1go] at @s run function trimabilities:clvl/a1
execute as @a[tag=aLvl1go] run tag @s remove aLvl1go

execute as @a[scores={archerLevel=250..},tag=!aLvl0,tag=!aLvl2,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s remove aLvl1
execute as @a[scores={archerLevel=250..},tag=!aLvl0,tag=!aLvl2,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl2go
execute as @a[scores={archerLevel=250..},tag=!aLvl0,tag=!aLvl2,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl2
execute as @a[scores={archerLevel=250..},tag=aLvl2go,tag=!wWildGive] run scoreboard players add @s progressWild 1
execute as @a[scores={archerLevel=250..},tag=aLvl2go,tag=!wWildGive] run tag @s add wWildGive
execute as @a[scores={archerLevel=250..},tag=aLvl2go] at @s run function trimabilities:clvl/a2
execute as @a[tag=aLvl2go] run tag @s remove aLvl2go

execute as @a[scores={archerLevel=1000..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s remove aLvl2
execute as @a[scores={archerLevel=1000..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl3go
execute as @a[scores={archerLevel=1000..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl3,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl3
execute as @a[scores={archerLevel=1000..},tag=aLvl3go] at @s run function trimabilities:clvl/a3
execute as @a[tag=aLvl3go] run tag @s remove aLvl3go

execute as @a[scores={archerLevel=2500..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl2,tag=!aLvl4,tag=!aLvl5] run tag @s remove aLvl3
execute as @a[scores={archerLevel=2500..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl2,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl4go
execute as @a[scores={archerLevel=2500..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl2,tag=!aLvl4,tag=!aLvl5] run tag @s add aLvl4
execute as @a[scores={archerLevel=2500..},tag=aLvl4go,tag=!wEyeGive] run scoreboard players add @s progressEye 1
execute as @a[scores={archerLevel=2500..},tag=aLvl4go,tag=!wEyeGive] run tag @s add wEyeGive
execute as @a[scores={archerLevel=2500..},tag=aLvl4go] at @s run function trimabilities:clvl/a4
execute as @a[tag=aLvl4go] run tag @s remove aLvl4go

execute as @a[scores={archerLevel=5000..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl2,tag=!aLvl3,tag=!aLvl5] run tag @s remove aLvl4
execute as @a[scores={archerLevel=5000..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl2,tag=!aLvl3,tag=!aLvl5] run tag @s add aLvl5go
execute as @a[scores={archerLevel=5000..},tag=!aLvl0,tag=!aLvl1,tag=!aLvl2,tag=!aLvl3,tag=!aLvl5] run tag @s add aLvl5
execute as @a[scores={archerLevel=5000..},tag=aLvl5go,tag=!wSentryGive] run scoreboard players add @s progressSentry 1
execute as @a[scores={archerLevel=5000..},tag=aLvl5go,tag=!wSentryGive] run tag @s add wSentryGive
execute as @a[scores={archerLevel=5000..},tag=aLvl5go] at @s run function trimabilities:clvl/a5
execute as @a[tag=aLvl5go] run tag @s remove aLvl5go

#Necromancer Level
execute as @a[scores={necromancerLevel=0..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl2,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl0

execute as @a[scores={necromancerLevel=100..},tag=!nLvl1,tag=!nLvl2,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s remove nLvl0
execute as @a[scores={necromancerLevel=100..},tag=!nLvl1,tag=!nLvl2,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl1go
execute as @a[scores={necromancerLevel=100..},tag=!nLvl1,tag=!nLvl2,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl1
execute as @a[scores={necromancerLevel=100..},tag=nLvl1go] at @s run function trimabilities:clvl/n1
execute as @a[tag=nLvl1go] run tag @s remove nLvl1go

execute as @a[scores={necromancerLevel=250..},tag=!nLvl0,tag=!nLvl2,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s remove nLvl1
execute as @a[scores={necromancerLevel=250..},tag=!nLvl0,tag=!nLvl2,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl2go
execute as @a[scores={necromancerLevel=250..},tag=!nLvl0,tag=!nLvl2,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl2
execute as @a[scores={necromancerLevel=250..},tag=nLvl2go] at @s run function trimabilities:clvl/n2
execute as @a[tag=nLvl2go] run tag @s remove nLvl2go

execute as @a[scores={necromancerLevel=1000..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s remove nLvl2
execute as @a[scores={necromancerLevel=1000..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl3go
execute as @a[scores={necromancerLevel=1000..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl3,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl3
execute as @a[scores={necromancerLevel=1000..},tag=nLvl3go,tag=!tRibGive] run scoreboard players add @s progressRib 1
execute as @a[scores={necromancerLevel=1000..},tag=nLvl3go,tag=!tRibGive] run tag @s add tRibGive
execute as @a[scores={necromancerLevel=1000..},tag=nLvl3go] at @s run function trimabilities:clvl/n3
execute as @a[tag=nLvl3go] run tag @s remove nLvl3go

execute as @a[scores={necromancerLevel=2500..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl2,tag=!nLvl4,tag=!nLvl5] run tag @s remove nLvl3
execute as @a[scores={necromancerLevel=2500..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl2,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl4go
execute as @a[scores={necromancerLevel=2500..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl2,tag=!nLvl4,tag=!nLvl5] run tag @s add nLvl4
execute as @a[scores={necromancerLevel=2500..},tag=nLvl4go] at @s run function trimabilities:clvl/n4
execute as @a[tag=nLvl4go] run tag @s remove nLvl4go

execute as @a[scores={necromancerLevel=5000..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl2,tag=!nLvl3,tag=!nLvl5] run tag @s remove nLvl4
execute as @a[scores={necromancerLevel=5000..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl2,tag=!nLvl3,tag=!nLvl5] run tag @s add nLvl5go
execute as @a[scores={necromancerLevel=5000..},tag=!nLvl0,tag=!nLvl1,tag=!nLvl2,tag=!nLvl3,tag=!nLvl5] run tag @s add nLvl5
execute as @a[scores={necromancerLevel=5000..},tag=nLvl5go,tag=!tVexGive] run scoreboard players add @s progressVex 1
execute as @a[scores={necromancerLevel=5000..},tag=nLvl5go,tag=!tVexGive] run tag @s add tVexGive
execute as @a[scores={necromancerLevel=5000..},tag=nLvl5go] at @s run function trimabilities:clvl/n5

execute as @a[tag=nLvl5go] run tag @s remove nLvl5go



schedule function trimabilities:categorylevels 10t