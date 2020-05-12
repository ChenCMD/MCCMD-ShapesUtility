# RawInput:    2が中心,視線方向不問
# RawDistance: {360/corner}/count
# RawOutput:   召喚Entityは次のEntityの視線方向を持つ
# public static Entity drawPolygons(Entity 0-a-17a7-3-2, int $radius, int $corner, int $jump, int $count, int $start) {
scoreboard players operation #temp Core = $count Input
scoreboard players operation $count Input = $corner Input
function chenbr_shapes_util:core/circle/draw
scoreboard players operation $corner Input = $count Input
scoreboard players operation $count Input = #temp Core
scoreboard players operation $count Input /= $corner Input
function chenbr_shapes_util:core/polygons/draw_recursive
scoreboard players operation $count Input = #temp Core