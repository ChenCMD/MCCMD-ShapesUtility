# public static Entity drawCircle(Entity center, int radius, int count, int start, int distance) {
execute as @e[tag=chenbr_shapes_util-center] at @s run function chenbr_shapes_util:core/master/rotate/common
execute positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ~ ~ ~
function chenbr_shapes_util:core/circle/draw
execute as @e[tag=chenbr_shapes_util-output] at @s unless score @s RunID = @s RunID run function chenbr_shapes_util:core/master/rotate/direction
execute as 0-a-17a7-3-2 at @s unless score @s RunID = @s RunID run function chenbr_shapes_util:core/master/rotate/direction
function chenbr_shapes_util:core/master/after_process/circle