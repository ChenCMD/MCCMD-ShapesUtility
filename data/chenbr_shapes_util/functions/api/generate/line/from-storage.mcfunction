#> chenbr_shapes_util:api/generate/line/from-storage
# @public
# @input
#   詳しい説明はREADMEを参照してください。

data modify entity 0-a-17a7-3-0 Pos set from storage chenbr:shapes_util InputPos[0]
data modify entity 0-a-17a7-3-1 Pos set from storage chenbr:shapes_util InputPos[1]
function chenbr_shapes_util:core/line/draw
function chenbr_shapes_util:core/master/after_process/line