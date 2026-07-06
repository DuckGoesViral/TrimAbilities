# Per-player mage handling, every tick. Runs as @s = one mage
# (dispatched from abilities1t as @a[tag=mage]). Replaces ~31
# world-level @a-iterating lines with @s-scoped ones.

execute unless entity @s[type=player] run return 0

# xp-display delay bookkeeping
execute if score @s xpDelay matches 1.. run scoreboard players add @s xpDelay 1
execute if score @s xpDelay matches 60.. run scoreboard players reset @s xpDelay

# Mana actionbar (raisers also see their soul count)
execute if entity @s[tag=raiser] unless score @s xpDelay matches 1.. run title @s actionbar ["",{"text":"Mana: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"mana"},"color":"dark_aqua"},{"text":" |","color":"dark_gray"},{"text":" Souls: ","color":"dark_green"},{"score":{"name":"@s","objective":"frankensteinScore"},"color":"dark_green"}]
execute if entity @s[tag=!raiser] unless score @s xpDelay matches 1.. run title @s actionbar ["",{"text":"| ","color":"dark_gray"},{"text":"Mana: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"mana"},"color":"dark_aqua"},{"text":" |","color":"dark_gray"}]

# Spell triggers (fake + real)
scoreboard players enable @s 7456-2314
scoreboard players enable @s 9124-4841
scoreboard players enable @s 9725-4688
scoreboard players enable @s 8942-6759
scoreboard players enable @s 6639-3275
scoreboard players enable @s 2457-1364
scoreboard players enable @s 6781-6345
scoreboard players enable @s 0123-9678
scoreboard players enable @s 8259-8215
scoreboard players enable @s 8259-9671
scoreboard players enable @s 8259-2315
scoreboard players enable @s 5681-8055
scoreboard players enable @s 4956-7855

# Cast requested spells
execute if score @s 2457-1364 matches 1.. at @s run function trimabilities:spells/fireball
execute if score @s 6781-6345 matches 1.. at @s run function trimabilities:spells/damageorb
execute if score @s 0123-9678 matches 1.. at @s run function trimabilities:spells/healpool
execute if score @s 8259-8215 matches 1.. if score @s raiser matches 4 at @s run function trimabilities:spells/frankenstein/zombie
execute if score @s 8259-9671 matches 1.. if score @s raiser matches 4 at @s run function trimabilities:spells/frankenstein/skeleton
execute if score @s 8259-2315 matches 1.. if score @s raiser matches 4 at @s run function trimabilities:spells/frankenstein/witherskeleton
execute if score @s 5681-8055 matches 1.. if score @s stray matches 4 at @s run function trimabilities:spells/cryomancy
execute if score @s 4956-7855 matches 1.. if score @s stray matches 4 at @s run function trimabilities:spells/icecube

# Reset consumed triggers
execute if score @s 2457-1364 matches 1.. run scoreboard players set @s 2457-1364 0
execute if score @s 6781-6345 matches 1.. run scoreboard players set @s 6781-6345 0
execute if score @s 0123-9678 matches 1.. run scoreboard players set @s 0123-9678 0
execute if score @s 8259-8215 matches 1.. run scoreboard players set @s 8259-8215 0
execute if score @s 8259-9671 matches 1.. run scoreboard players set @s 8259-9671 0
execute if score @s 8259-2315 matches 1.. run scoreboard players set @s 8259-2315 0
execute if score @s 5681-8055 matches 1.. run scoreboard players set @s 5681-8055 0
execute if score @s 4956-7855 matches 1.. run scoreboard players set @s 4956-7855 0
