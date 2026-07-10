# Runs every 10 ticks (bootstrapped from load.mcfunction, self-schedules).
# Holds the expensive scans that don't need 5t precision:
#  - trim equipment detection (one player-list walk, score-gated NBT reads)
#  - item maintenance (bow power-warning labels + unbreakable stripping)

execute as @a run function trimabilities:player/equipcheck
function trimabilities:item_maintenance

schedule function trimabilities:abilities10t 10t
