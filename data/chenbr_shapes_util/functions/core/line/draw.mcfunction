# RawInput:    0が始点,1が終点,視線方向不問
# RawDistance: 0->1の距離/count
# RawOutput:   召喚Entityは0の視線方向を維持
# public static Entity drawLine(Entity 0-a-17a7-3-0, Entity 0-a-17a7-3-1, int $count) {
execute at 0-a-17a7-3-0 facing entity 0-a-17a7-3-1 feet run tp 0-a-17a7-3-0 ~ ~ ~ ~ ~
execute store result score #pitch Core run data get entity 0-a-17a7-3-0 Rotation[1] 100
scoreboard players set #temp Core -9000
scoreboard players operation #temp Core -= #pitch Core
scoreboard players operation #temp Core /= #2 Core
scoreboard players operation #pitch Core += #temp Core
execute store result entity 0-a-17a7-3-0 Rotation[1] float 0.01 run scoreboard players get #pitch Core
tp 0-a-17a7-3-2 0-a-17a7-3-1
execute as 0-a-17a7-3-2 at 0-a-17a7-3-0 positioned ^ ^ ^2000 facing entity @s feet positioned ^ ^ ^2000 rotated as 0-a-17a7-3-0 facing ^1 ^ ^ positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^-1000 rotated as 0-a-17a7-3-0 facing ^-1 ^ ^ positioned ^ ^ ^2000 run tp @s ~ ~ ~
execute store result score #particle-distance Core run data get entity 0-a-17a7-3-0 Pos[1] 10000
execute store result score #temp Core run data get entity 0-a-17a7-3-2 Pos[1] 10000
scoreboard players operation #particle-distance Core -= #temp Core
scoreboard players operation #particle-distance Core /= $count Input
scoreboard players set #particle-distanceC Core 0
execute as 0-a-17a7-3-0 at @s facing entity 0-a-17a7-3-1 feet run tp @s ~ ~ ~ ~ ~
scoreboard players set #tp-count Core 0
execute as 0-a-17a7-3-0 at @s run function chenbr_shapes_util:core/line/recursive