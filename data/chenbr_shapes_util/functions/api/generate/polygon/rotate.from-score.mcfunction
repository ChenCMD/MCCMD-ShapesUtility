# public static Entity drawPolygons(int center-X, int center-Y, int center-Z, int angle-Yaw, int angle-Pitch, int radius, int corner, int jump, int count, int start, int distance) {
execute store result entity 0-a-17a7-3-2 Pos[0] double 0.01 run scoreboard players get $center-X Input
execute store result entity 0-a-17a7-3-2 Pos[1] double 0.01 run scoreboard players get $center-Y Input
execute store result entity 0-a-17a7-3-2 Pos[2] double 0.01 run scoreboard players get $center-Z Input
execute store result entity 0-a-17a7-3-2 Rotation[0] double 0.01 run scoreboard players get $angle-Yaw Input
execute store result entity 0-a-17a7-3-2 Rotation[1] double 0.01 run scoreboard players get $angle-Pitch Input
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/master/rotate/common
execute positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ~ ~ ~
function chenbr_shapes_util:core/polygon/draw
scoreboard players set #rotate-direction Core 1
execute as @e[tag=chenbr_shapes_util-output,tag=unfinished] at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/polygon