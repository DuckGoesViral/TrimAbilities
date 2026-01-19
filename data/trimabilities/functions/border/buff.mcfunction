tag @s add wildMob
execute store result score effects wildsRandom run random value 1..9

execute if score effects wildsRandom matches 1 run effect give @s speed infinite 0 false
execute if score effects wildsRandom matches 2 run effect give @s speed infinite 1 false
execute if score effects wildsRandom matches 3 run effect give @s speed infinite 4 false
execute if score effects wildsRandom matches 4 run effect give @s strength infinite 0 false
execute if score effects wildsRandom matches 5 run effect give @s strength infinite 1 false
execute if score effects wildsRandom matches 6 run effect give @s strength infinite 4 false
execute if score effects wildsRandom matches 7 run effect give @s resistance infinite 0 false
execute if score effects wildsRandom matches 8 run effect give @s resistance infinite 1 false
execute if score effects wildsRandom matches 9 run effect give @s resistance infinite 3 false

execute as @s if entity @s[type=horse] run effect clear @s speed
execute as @s if entity @s[type=mule] run effect clear @s speed
execute as @s if entity @s[type=donkey] run effect clear @s speed
execute as @s if entity @s[type=llama] run effect clear @s speed
execute as @s if entity @s[type=camel] run effect clear @s speed
execute as @s if entity @s[type=skeleton_horse] run effect clear @s speed
execute as @s if entity @s[type=zombie_horse] run effect clear @s speed
execute as @s if entity @s[type=strider] run effect clear @s speed

execute store result score effects wildsRandom run random value 1..3

execute if score effects wildsRandom matches 1 if entity @s[type=#minecraft:undead] run item replace entity @s armor.head with leather_helmet
execute if score effects wildsRandom matches 2 if entity @s[type=#minecraft:undead] run item replace entity @s armor.head with chainmail_helmet
execute if score effects wildsRandom matches 3 if entity @s[type=#minecraft:undead] run item replace entity @s armor.head with iron_helmet

