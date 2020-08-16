#> chenbr_shapes_util:core/master/util/move/10
# @internal

scoreboard players operation @s CB03_Core *= #2 CB03_Core
execute if score @s CB03_Core matches 0.. run function chenbr_shapes_util:core/master/util/move/9
execute if score @s CB03_Core matches ..-1 positioned ^ ^ ^0.0512 run function chenbr_shapes_util:core/master/util/move/9