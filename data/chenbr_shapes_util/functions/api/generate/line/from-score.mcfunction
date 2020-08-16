#> chenbr_shapes_util:api/generate/line/from-score
# @public
# @input
#   詳しい説明はREADMEを参照してください。

execute store result entity 0-a-17a7-3-0 Pos[0] double 0.01 run scoreboard players get $from-X CB03_Input
execute store result entity 0-a-17a7-3-0 Pos[1] double 0.01 run scoreboard players get $from-Y CB03_Input
execute store result entity 0-a-17a7-3-0 Pos[2] double 0.01 run scoreboard players get $from-Z CB03_Input
execute store result entity 0-a-17a7-3-1 Pos[0] double 0.01 run scoreboard players get $to-X CB03_Input
execute store result entity 0-a-17a7-3-1 Pos[1] double 0.01 run scoreboard players get $to-Y CB03_Input
execute store result entity 0-a-17a7-3-1 Pos[2] double 0.01 run scoreboard players get $to-Z CB03_Input
function chenbr_shapes_util:core/line/draw
function chenbr_shapes_util:core/master/after_process/line