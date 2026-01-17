
execute unless score @s mana matches 15.. at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 15.. run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute unless score @s mana matches 15.. run return run tellraw @s ["",{"text":"Not enough Mana to cast Frankenstein!","color":"red","bold": true}]

scoreboard players remove @s mana 15

execute if score @s frankensteinScore matches ..19 at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute if score @s frankensteinScore matches ..19 run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
execute if score @s frankensteinScore matches ..19 run return run tellraw @s {"text": "Not enough souls to summon a skeleton!","color": "red","bold": true}

execute at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2

execute at @s anchored eyes run summon minecraft:skeleton ~ ~ ~ {Tags:["necroSummon0"],DeathLootTable:"minecraft:empty"}
item replace entity @e[type=skeleton,tag=necroSummon0] weapon.offhand with bow

execute if entity @s[team=] run team join necromancer @s
execute if entity @s[team=necromancer] run scoreboard players reset @s necroTimer

execute if entity @s[team=AquaTeam] as @e[tag=necroSummon0,distance=..3] run team join AquaTeam
execute if entity @s[team=BlueTeam] as @e[tag=necroSummon0,distance=..3] run team join BlueTeam
execute if entity @s[team=GoldTeam] as @e[tag=necroSummon0,distance=..3] run team join GoldTeam
execute if entity @s[team=GrayTeam] as @e[tag=necroSummon0,distance=..3] run team join GrayTeam
execute if entity @s[team=GreenTeam] as @e[tag=necroSummon0,distance=..3] run team join GreenTeam
execute if entity @s[team=PurpleTeam] as @e[tag=necroSummon0,distance=..3] run team join PurpleTeam
execute if entity @s[team=RedTeam] as @e[tag=necroSummon0,distance=..3] run team join RedTeam
execute if entity @s[team=YellowTeam] as @e[tag=necroSummon0,distance=..3] run team join YellowTeam
execute if entity @s[team=necromancer] as @e[tag=necroSummon0,distance=..3] run team join necromancer

execute as @e[tag=necroSummon0] run effect give @s glowing infinite 0 true

execute as @e[tag=necroSummon0,distance=..3] run tag @s add necroSummon
execute as @e[tag=necroSummon0,distance=..3] run tag @s remove necroSummon0

scoreboard players remove @s frankensteinScore 20


execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 15 normal @a[distance=..15]


