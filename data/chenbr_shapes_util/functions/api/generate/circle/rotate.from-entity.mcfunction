execute as @e[tag=chenbr_shapes_util-center] at @s run function chenbr_shapes_util:core/master/rotate/common
execute positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ~ ~ ~
function chenbr_shapes_util:core/circle/draw
scoreboard players set #rotate-direction Core 0
execute as @e[tag=chenbr_shapes_util-output,tag=unfinished] at @s run function chenbr_shapes_util:core/master/rotate/run
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/circle