execute at @s if score TrailRuins ruinsPlaced matches 0..3 store result storage trimabilities:ruins first.x int 1 run random value -50..50
execute at @s if score TrailRuins ruinsPlaced matches 0..3 store result storage trimabilities:ruins first.z int 1 run random value -50..50

execute at @s if score TrailRuins ruinsPlaced matches 4..7 store result storage trimabilities:ruins second.x int 1 run random value -200..200
execute at @s if score TrailRuins ruinsPlaced matches 4..7 store result storage trimabilities:ruins second.z int 1 run random value -200..200

execute at @s if score TrailRuins ruinsPlaced matches 8..11 store result storage trimabilities:ruins third.x int 1 run random value -500..500
execute at @s if score TrailRuins ruinsPlaced matches 8..11 store result storage trimabilities:ruins third.z int 1 run random value -500..500

execute at @s if score TrailRuins ruinsPlaced matches 0..3 run function trimabilities:placetrailruins2 with storage trimabilities:ruins first
execute at @s if score TrailRuins ruinsPlaced matches 4..7 run function trimabilities:placetrailruins2 with storage trimabilities:ruins second
execute at @s if score TrailRuins ruinsPlaced matches 8..11 run function trimabilities:placetrailruins2 with storage trimabilities:ruins third

scoreboard players add TrailRuins ruinsPlaced 1
tag @s add placedRuins

say place1