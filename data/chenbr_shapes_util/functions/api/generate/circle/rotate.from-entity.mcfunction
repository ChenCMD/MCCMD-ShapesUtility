#> chenbr_shapes_util:api/generate/circle/rotate.from-entity
# @public
# @input
#   詳しい説明はREADMEを参照してください。

execute as @e[tag=chenbr_shapes_util-center,limit=1] at @s run function chenbr_shapes_util:core/master/rotate/common
tp 0-a-17a7-3-2 0.0 0.0 0.0
function chenbr_shapes_util:core/circle/draw
scoreboard players set #rotate-direction CB03_Core 0
execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] at @s run function chenbr_shapes_util:core/master/rotate/run
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/circle