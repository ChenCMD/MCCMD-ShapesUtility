#> chenbr_shapes_util:api/generate/polygon/rotate.from-storage
# @public
# @input
#   詳しい説明はREADMEを参照してください。

data modify entity 0-a-17a7-3-2 Pos set from storage chenbr:shapes_util InputPos[0]
data modify entity 0-a-17a7-3-2 Rotation set from storage chenbr:shapes_util InputRotation
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/common
tp 0-a-17a7-3-2 0.0 0.0 0.0
function chenbr_shapes_util:core/polygon/draw
scoreboard players set #rotate-direction CB03_Core 1
execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/polygon