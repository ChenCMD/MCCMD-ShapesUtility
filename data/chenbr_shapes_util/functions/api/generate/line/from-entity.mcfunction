#> chenbr_shapes_util:api/generate/line/from-entity
# @public
# @input
#   詳しい説明はREADMEを参照してください。

tp 0-a-17a7-3-0 @e[tag=chenbr_shapes_util-from,limit=1]
tp 0-a-17a7-3-1 @e[tag=chenbr_shapes_util-to,limit=1]
function chenbr_shapes_util:core/line/draw
function chenbr_shapes_util:core/master/after_process/line