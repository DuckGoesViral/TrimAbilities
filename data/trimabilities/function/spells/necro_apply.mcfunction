# Callback for teamiter: necro-summon retaliation for summons on team $(team) -
# strike a nearby non-teammate. Absolute selectors. (Fixes the old
# always-!AquaTeam proximity-check bug: now checks for enemies of $(team).)
$execute as @e[tag=necroSummon,team=$(team),scores={necroDamage=5..}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!item_display,type=!armor_stand,team=!$(team),distance=1..15] run damage @s 0 mob_attack by @e[type=!item,type=!armor_stand,type=!marker,type=!player,distance=..30,limit=1,team=!$(team)]
