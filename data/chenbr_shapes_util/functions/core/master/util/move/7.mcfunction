#> chenbr_shapes_util:core/master/util/move/7
# @internal

scoreboard players operation @s CB03_Core *= #2 CB03_Core
execute if score @s CB03_Core matches 0.. run function chenbr_shapes_util:core/master/util/move/6
execute if score @s CB03_Core matches ..-1 positioned ^ ^ ^0.0064 run function chenbr_shapes_util:core/master/util/move/6