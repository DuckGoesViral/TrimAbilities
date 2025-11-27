execute as @a[tag=shaper] run tag @s add warrior
execute as @a[tag=dune] run tag @s add warrior
execute as @a[tag=snout] run tag @s add warrior
execute as @a[tag=silence] run tag @s add warrior

execute as @a[tag=!shaper,tag=!dune,tag=!snout,tag=!silence] run tag @s remove warrior


execute as @a[tag=host] run tag @s add tank
execute as @a[tag=ward] run tag @s add tank
execute as @a[tag=spire] run tag @s add tank

execute as @a[tag=!host,tag=!ward,tag=!spire] run tag @s remove tank


execute as @a[tag=wayfinder] run tag @s add archer
execute as @a[tag=wild] run tag @s add archer
execute as @a[tag=eye] run tag @s add archer
execute as @a[tag=sentry] run tag @s add archer

execute as @a[tag=!wayfinder,tag=!wild,tag=!eye,tag=!sentry] run tag @s remove archer

#execute as @a[tag=raiser] run tag @s add necromancer
#execute as @a[tag=rib] run tag @s add necromancer
#execute as @a[tag=vex] run tag @s add necromancer
#
#execute as @a[tag=!raiser,tag=!rib,tag=!vex] run tag @s remove necromancer

schedule function trimabilities:categorytags 10t