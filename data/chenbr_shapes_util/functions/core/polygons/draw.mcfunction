# RawInput:    2が中心,視線方向不問
# RawDistance: {360/corner}/count
# RawOutput:   召喚Entityは次のEntityの視線方向を持つ
# public static Entity drawPolygons(Entity 0-a-17a7-3-2, int $radius, int $corner, int $jump, int $count, int $start) {
scoreboard players operation #tempCount Core = $count Input
scoreboard players operation $count Input = $corner Input
function chenbr_shapes_util:core/circle/draw
scoreboard players set #summon-count Core 0
scoreboard players operation $count Input = #tempCount Core
scoreboard players operation $count Input /= $corner Input
tag @e[tag=unfinished,tag=chenbr_shapes_util-output] add temp
scoreboard players set #from Core 0
scoreboard players set #to Core 0
scoreboard players operation #to Core += $jump Input
scoreboard players operation #to Core %= $corner Input
function chenbr_shapes_util:core/polygons/recursive
kill @e[tag=temp]
scoreboard players operation $count Input = #tempCount Core