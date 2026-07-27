# Generic team-registry iterator (team-agnostic ability support).
# Caller sets, before invoking:
#   storage trimabilities:iter q   = the team list (copy of teams:registry names)
#   storage trimabilities:iter cb  = the callback function id to run per team
# The callback runs once per team with macro arg $(team) = that team's name,
# inheriting the caller's executor and position. Drains q as it goes.
execute unless data storage trimabilities:iter q[0] run return 0
data modify storage trimabilities:iter team set from storage trimabilities:iter q[0]
function trimabilities:teamiter/call with storage trimabilities:iter
data remove storage trimabilities:iter q[0]
function trimabilities:teamiter/run
