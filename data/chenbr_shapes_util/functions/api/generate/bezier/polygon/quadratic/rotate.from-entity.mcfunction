execute as @e[limit=1,tag=chenbr_shapes_util-center] at @s run function chenbr_shapes_util:core/master/rotate/common
tp 0-a-17a7-3-2 0.0 0.0 0.0
function chenbr_shapes_util:core/bezier/polygon/quadratic/draw
scoreboard players set #rotate-direction Core 1
execute as @e[tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/polygon