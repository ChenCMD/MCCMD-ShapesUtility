data modify entity 0-a-17a7-3-2 Pos set from storage chenbr:shapes_util InputPos[0]
data modify entity 0-a-17a7-3-2 Rotation set from storage chenbr:shapes_util InputRotation
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/common
tp 0-a-17a7-3-2 0.0 0.0 0.0
function chenbr_shapes_util:core/circle/draw
scoreboard players set #rotate-direction CB03_Core 0
execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] run function chenbr_shapes_util:core/master/rotate/run
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/circle