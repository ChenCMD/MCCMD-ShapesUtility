# public static Entity drawPolygons(Entity center, int radius, int corner, int jump, int count, int start, int distance) {
execute as @e[tag=chenbr_shapes_util-center] at @s run function chenbr_shapes_util:core/master/rotate/common
execute positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ~ ~ ~
function chenbr_shapes_util:core/polygon/draw
scoreboard players set #rotate-direction Core 1
execute as @e[tag=chenbr_shapes_util-output,tag=unfinished] at @s run function chenbr_shapes_util:core/master/rotate/run
function chenbr_shapes_util:core/master/after_process/polygon