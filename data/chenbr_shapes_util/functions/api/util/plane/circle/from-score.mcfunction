# public static Entity drawCircle(int from-X, int from-Y, int from-Z, int radius, int count, int start) {
execute store result entity 0-a-17a7-3-2 Pos[0] double 0.01 run scoreboard players get $center-X Input
execute store result entity 0-a-17a7-3-2 Pos[1] double 0.01 run scoreboard players get $center-Y Input
execute store result entity 0-a-17a7-3-2 Pos[2] double 0.01 run scoreboard players get $center-Z Input
function chenbr_shapes_util:core/circle/draw
function chenbr_shapes_util:core/master/after_process/circle