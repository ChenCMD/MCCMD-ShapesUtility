#> chenbr_shapes_util:api/generate/polygon/rotate.from-score
# @public
# @input
#   詳しい説明はREADMEを参照してください。

execute store result entity 0-a-17a7-3-2 Pos[0] double 0.01 run scoreboard players get $center-X CB03_Input
execute store result entity 0-a-17a7-3-2 Pos[1] double 0.01 run scoreboard players get $center-Y CB03_Input
execute store result entity 0-a-17a7-3-2 Pos[2] double 0.01 run scoreboard players get $center-Z CB03_Input
execute store result entity 0-a-17a7-3-2 Rotation[0] float 0.01 run scoreboard players get $angle-Yaw CB03_Input
execute store result entity 0-a-17a7-3-2 Rotation[1] float 0.01 run scoreboard players get $angle-Pitch CB03_Input
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/common
tp 0-a-17a7-3-2 0.0 0.0 0.0
function chenbr_shapes_util:core/polygon/draw
scoreboard players set #rotate-direction CB03_Core 1
execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/polygon