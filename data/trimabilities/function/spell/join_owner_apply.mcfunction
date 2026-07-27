# Callback for teamiter: if the caster (@s) is on team $(team), make freshly
# summoned entities (tag=newSummon, near the caster) join that team too.
# Runs as @s at the caster's position.
$execute if entity @s[team=$(team)] run team join $(team) @e[tag=newSummon,distance=..3]
