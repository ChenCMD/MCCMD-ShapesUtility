#> chenbr_shapes_util:core/master/util/rotate/13
# @internal

scoreboard players operation @s CB03_Core *= #2 CB03_Core
execute if score @s CB03_Core matches 0.. run function chenbr_shapes_util:core/master/util/rotate/12
execute if score @s CB03_Core matches ..-1 rotated ~0.4096 ~ run function chenbr_shapes_util:core/master/util/rotate/12