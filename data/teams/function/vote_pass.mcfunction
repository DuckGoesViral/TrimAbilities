# The vote passed. Apply the result for the current mode, then clean up.
#   #mode 1 = join request,  2 = kick vote
execute if score #mode teamvote matches 1 run function teams:pass_join
execute if score #mode teamvote matches 2 run function teams:pass_kick
function teams:vote_end
