execute store result entity 0-a-17a7-3-2 Pos[0] double 1 run data get storage chenbr:shapes_util InputPos[0] 1
execute store result entity 0-a-17a7-3-2 Pos[1] double 1 run data get storage chenbr:shapes_util InputPos[1] 1
execute store result entity 0-a-17a7-3-2 Pos[2] double 1 run data get storage chenbr:shapes_util InputPos[2] 1
execute store result entity 0-a-17a7-3-2 Rotation[0] double 1 run data get storage chenbr:shapes_util InputRotation[0] 1
execute store result entity 0-a-17a7-3-2 Rotation[1] double 1 run data get storage chenbr:shapes_util InputRotation[1] 1
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/common
execute positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ~ ~ ~
function chenbr_shapes_util:core/circle/draw
scoreboard players set #rotate-direction Core 0
execute as @e[tag=chenbr_shapes_util-output,tag=unfinished] run function chenbr_shapes_util:core/master/rotate/run
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/circle