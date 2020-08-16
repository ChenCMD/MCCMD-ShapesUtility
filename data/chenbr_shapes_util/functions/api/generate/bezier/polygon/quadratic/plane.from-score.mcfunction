#> chenbr_shapes_util:api/generate/bezier/polygon/quadratic/plane.from-score
# @public
# @input
#   詳しい説明はREADMEを参照してください。

execute store result entity 0-a-17a7-3-2 Pos[0] double 0.01 run scoreboard players get $center-X CB03_Input
execute store result entity 0-a-17a7-3-2 Pos[1] double 0.01 run scoreboard players get $center-Y CB03_Input
execute store result entity 0-a-17a7-3-2 Pos[2] double 0.01 run scoreboard players get $center-Z CB03_Input
function chenbr_shapes_util:core/bezier/polygon/quadratic/draw
function chenbr_shapes_util:core/master/after_process/polygon