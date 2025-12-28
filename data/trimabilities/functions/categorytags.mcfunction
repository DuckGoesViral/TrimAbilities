tag @s remove tank
tag @s remove warrior
tag @s remove archer


execute as @a[tag=shaper] run tag @s add warrior
execute as @a[tag=dune] run tag @s add warrior
execute as @a[tag=snout] run tag @s add warrior
execute as @a[tag=silence] run tag @s add warrior

execute as @a[tag=host] run tag @s add tank
execute as @a[tag=vital] run tag @s add tank
execute as @a[tag=ward] run tag @s add tank
execute as @a[tag=spire] run tag @s add tank

execute as @a[tag=wayfinder] run tag @s add archer
execute as @a[tag=wild] run tag @s add archer
execute as @a[tag=eye] run tag @s add archer
execute as @a[tag=sentry] run tag @s add archer

execute as @a[tag=raiser] run tag @s add mage
execute as @a[tag=stray] run tag @s add mage
execute as @a[tag=echo] run tag @s add mage
execute as @a[tag=storm] run tag @s add mage


#execute as @a[tag=raiser] run tag @s add necromancer
#execute as @a[tag=rib] run tag @s add necromancer
#execute as @a[tag=vex] run tag @s add necromancer
#
#execute as @a[tag=!raiser,tag=!rib,tag=!vex] run tag @s remove necromancer

schedule function trimabilities:categorytags 10t