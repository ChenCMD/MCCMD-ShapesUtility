#> chenbr_shapes_util:core/master/util/rotate/8
# @internal

scoreboard players operation @s CB03_Core *= #2 CB03_Core
execute if score @s CB03_Core matches 0.. run function chenbr_shapes_util:core/master/util/rotate/7
execute if score @s CB03_Core matches ..-1 rotated ~0.0128 ~ run function chenbr_shapes_util:core/master/util/rotate/7