# public static Entity line(int[] from, int radius, int count, int start, int distance) {
function chenbr_shapes_util:core/master/rotate/common
execute store result entity 0-a-17a7-3-2 Pos[0] double 1 run data get storage chenbr:shapes_util Input[0] 1
execute store result entity 0-a-17a7-3-2 Pos[1] double 1 run data get storage chenbr:shapes_util Input[1] 1
execute store result entity 0-a-17a7-3-2 Pos[2] double 1 run data get storage chenbr:shapes_util Input[2] 1
function chenbr_shapes_util:core/circle/draw
function chenbr_shapes_util:core/master/after_process/circle