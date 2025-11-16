execute as @a[tag=!placedRuins] at @s unless score TrailRuins ruinsPlaced matches 4.. if score TrailRuins ruinsPlaced matches 0 run place structure trail_ruins ~25 ~ ~
execute as @a[tag=!placedRuins] at @s unless score TrailRuins ruinsPlaced matches 4.. if score TrailRuins ruinsPlaced matches 1 run place structure trail_ruins ~ ~ ~50
execute as @a[tag=!placedRuins] at @s unless score TrailRuins ruinsPlaced matches 4.. if score TrailRuins ruinsPlaced matches 2 run place structure trail_ruins ~-100 ~ ~
execute as @a[tag=!placedRuins] at @s unless score TrailRuins ruinsPlaced matches 4.. if score TrailRuins ruinsPlaced matches 3 run place structure trail_ruins ~ ~ ~-200

execute as @a[tag=!placedRuins] unless score TrailRuins ruinsPlaced matches 4.. run scoreboard players add TrailRuins ruinsPlaced 1
execute as @a[tag=!placedRuins] run tag @s add placedRuins