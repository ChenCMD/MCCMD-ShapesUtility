# RawInput:    0が始点,1が終点,視線方向不問
# RawDistance: 0->1の距離/count
# RawOutput:   召喚Entityは0の視線方向を維持
# public static Entity drawLine(Entity 0-a-17a7-3-0, Entity 0-a-17a7-3-1, int $count) {
scoreboard players reset #c-max Core
scoreboard players reset #particle-distance Core
execute store result score #from-X Core run data get entity 0-a-17a7-3-0 Pos[0] 1000
execute store result score #from-Y Core run data get entity 0-a-17a7-3-0 Pos[1] 1000
execute store result score #from-Z Core run data get entity 0-a-17a7-3-0 Pos[2] 1000
execute store result score #to-X Core run data get entity 0-a-17a7-3-1 Pos[0] 1000
execute store result score #to-Y Core run data get entity 0-a-17a7-3-1 Pos[1] 1000
execute store result score #to-Z Core run data get entity 0-a-17a7-3-1 Pos[2] 1000
execute at 0-a-17a7-3-0 facing entity 0-a-17a7-3-1 feet positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp 0-a-17a7-3-2 ~ ~ ~ ~ ~
execute store result score #c-X Core run data get entity 0-a-17a7-3-2 Pos[0] 1000
execute store result score #c-Y Core run data get entity 0-a-17a7-3-2 Pos[1] 1000
execute store result score #c-Z Core run data get entity 0-a-17a7-3-2 Pos[2] 1000
scoreboard players operation #to-X Core -= #from-X Core
scoreboard players operation #to-Y Core -= #from-Y Core
scoreboard players operation #to-Z Core -= #from-Z Core
execute if score #to-X Core matches ..-1 run scoreboard players operation #to-X Core *= #-1 Core
execute if score #to-Y Core matches ..-1 run scoreboard players operation #to-Y Core *= #-1 Core
execute if score #to-Z Core matches ..-1 run scoreboard players operation #to-Z Core *= #-1 Core
execute if score #c-X Core matches ..-1 run scoreboard players operation #c-X Core *= #-1 Core
execute if score #c-Y Core matches ..-1 run scoreboard players operation #c-Y Core *= #-1 Core
execute if score #c-Z Core matches ..-1 run scoreboard players operation #c-Z Core *= #-1 Core
scoreboard players operation #c-max Core > #c-X Core
scoreboard players operation #c-max Core > #c-Y Core
scoreboard players operation #c-max Core > #c-Z Core
scoreboard players operation #particle-distance Core > #to-X Core
scoreboard players operation #particle-distance Core > #to-Y Core
scoreboard players operation #particle-distance Core > #to-Z Core
scoreboard players operation #particle-distance Core *= #10000 Core
scoreboard players operation #particle-distance Core /= #c-max Core

scoreboard players operation #particle-distance Core /= $count Input
scoreboard players set #particle-distanceC Core 0
execute as 0-a-17a7-3-0 at @s facing entity 0-a-17a7-3-1 feet run tp @s ~ ~ ~ ~ ~
scoreboard players set #tp-count Core 0
execute as 0-a-17a7-3-0 at @s run function chenbr_shapes_util:core/line/recursive