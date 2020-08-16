#> chenbr_shapes_util:api/generate/bezier/line/quadratic/from-entity
# @public
# @input
#   詳しい説明はREADMEを参照してください。

tp 0-a-17a7-3-0 @e[limit=1,tag=chenbr_shapes_util-from]
tp 0-a-17a7-3-5 @e[limit=1,tag=chenbr_shapes_util-control-a]
tp 0-a-17a7-3-1 @e[limit=1,tag=chenbr_shapes_util-to]
function chenbr_shapes_util:core/bezier/line/quadratic/draw
function chenbr_shapes_util:core/master/after_process/line