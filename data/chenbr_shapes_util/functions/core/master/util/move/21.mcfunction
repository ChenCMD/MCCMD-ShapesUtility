#> chenbr_shapes_util:core/master/util/move/21
# @internal

scoreboard players operation @s CB03_Core *= #2 CB03_Core
execute if score @s CB03_Core matches 0.. run function chenbr_shapes_util:core/master/util/move/20
execute if score @s CB03_Core matches ..-1 positioned ^ ^ ^104.8576 run function chenbr_shapes_util:core/master/util/move/20