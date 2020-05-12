# public static Entity line(int[] from, int radius, int count, int start, int distance) {
execute store result entity 0-a-17a7-3-2 Pos[0] double 1 run data get storage chenbr:shapes_util InputPos[0] 1
execute store result entity 0-a-17a7-3-2 Pos[1] double 1 run data get storage chenbr:shapes_util InputPos[1] 1
execute store result entity 0-a-17a7-3-2 Pos[2] double 1 run data get storage chenbr:shapes_util InputPos[2] 1
execute store result entity 0-a-17a7-3-2 Rotation[0] double 1 run data get storage chenbr:shapes_util InputRotation[0] 1
execute store result entity 0-a-17a7-3-2 Rotation[1] double 1 run data get storage chenbr:shapes_util InputRotation[1] 1
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/common
execute positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ~ ~ ~
function chenbr_shapes_util:core/circle/draw
execute as @e[tag=chenbr_shapes_util-output] at @s unless score @s RunID = @s RunID run function chenbr_shapes_util:core/master/rotate/direction
execute as 0-a-17a7-3-2 at @s unless score @s RunID = @s RunID run function chenbr_shapes_util:core/master/rotate/direction
function chenbr_shapes_util:core/master/after_process/circle