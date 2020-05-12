# RawInput:    2が中心,視線方向不問
# RawDistance: 360/count
# RawOutput:   召喚Entityは外側への視線方向を持つ
# public static Entity drawCircle(Entity 0-a-17a7-3-2, int $radius, int $count, int $start) {
tp 0-a-17a7-3-3 0.0 0.0 0.0 0 0
scoreboard players operation #particle-distanceC Core = $start Input
execute as 0-a-17a7-3-3 at @s run function chenbr_shapes_util:core/circle/spin/15

scoreboard players set #particle-distance Core 36000
scoreboard players operation #particle-distance Core /= $count Input

execute store result score #center-X Core run data get entity 0-a-17a7-3-2 Pos[0] 100
execute store result score #center-Y Core run data get entity 0-a-17a7-3-2 Pos[1] 100
execute store result score #center-Z Core run data get entity 0-a-17a7-3-2 Pos[2] 100

scoreboard players set #particle-distanceC Core 0
scoreboard players set #tp-count Core 0
execute as 0-a-17a7-3-3 at @s run function chenbr_shapes_util:core/circle/spin_recursive