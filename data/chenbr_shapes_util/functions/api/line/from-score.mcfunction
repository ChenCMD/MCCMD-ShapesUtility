# public static Entity line(int from-X, int from-Y, int from-Z, int to-X, int to-Y, int to-Z, int count) {
execute store result entity 0-a-17a7-3-0 Pos[0] double 0.01 run scoreboard players get $from-X Input
execute store result entity 0-a-17a7-3-0 Pos[1] double 0.01 run scoreboard players get $from-Y Input
execute store result entity 0-a-17a7-3-0 Pos[2] double 0.01 run scoreboard players get $from-Z Input
execute store result entity 0-a-17a7-3-1 Pos[0] double 0.01 run scoreboard players get $to-X Input
execute store result entity 0-a-17a7-3-1 Pos[1] double 0.01 run scoreboard players get $to-Y Input
execute store result entity 0-a-17a7-3-1 Pos[2] double 0.01 run scoreboard players get $to-Z Input
function chenbr_shapes_util:core/line/draw
function chenbr_shapes_util:core/master/run_id_sync