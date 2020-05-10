# public static Entity line(Entity from, Entity to, int count) {
execute at @e[tag=chenbr_shapes_util-from] run tp 0-a-17a7-3-0 ~ ~ ~
execute at @e[tag=chenbr_shapes_util-tp] run tp 0-a-17a7-3-1 ~ ~ ~
function chenbr_shapes_util:core/line/draw
function chenbr_shapes_util:core/master/run_id_sync