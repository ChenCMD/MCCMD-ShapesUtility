#> chenbr_shapes_util:core/master/util/rotate/5
# @internal

scoreboard players operation @s CB03_Core *= #2 CB03_Core
execute if score @s CB03_Core matches 0.. run function chenbr_shapes_util:core/master/util/rotate/4
execute if score @s CB03_Core matches ..-1 rotated ~0.0016 ~ run function chenbr_shapes_util:core/master/util/rotate/4