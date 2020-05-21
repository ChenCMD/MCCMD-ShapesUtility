scoreboard players operation @s Core *= #2 Core
execute if score @s Core matches 0.. run function chenbr_shapes_util:core/bezier/line/move/1
execute if score @s Core matches ..-1 positioned ^ ^ ^0.0002 run function chenbr_shapes_util:core/bezier/line/move/1