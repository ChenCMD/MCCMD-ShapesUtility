# RawInput:    0が始点,1が終点,5が制御点 視線方向不問
# RawDistance: 0->5->1の距離/count = tの実進行量 1/count = tの進行量
# RawOutput:   召喚Entityは0の視線方向を維持
#public static Entity drawLine(Entity 0-a-17a7-3-0, Entity 0-a-17a7-3-5, Entity 0-a-17a7-3-1, int $count) {
#   Location 0 = 0-a-17a7-3-0.getLocation();
#   Location 5 = 0-a-17a7-3-5.getLocation();
#   Location 1 = 0-a-17a7-3-1.getLocation();
#   double a = 0.getDistance(5) / count;
#   double b = 5.getDistance(1) / count;
#   for(int i = 0; i < count; i++) {
#       double c = 0.getDistance(5) * i;
#       // 0->5へのDirectionへc分だけ進んだ場所にoutput
#       0.add(0.getDirection().multipy(a));
#       5.add(0.getDirection().multipy(b));
#   }

scoreboard players reset #c-max Core
scoreboard players reset #distance-a Core
execute store result score #from-X Core run data get entity 0-a-17a7-3-0 Pos[0] 1000
execute store result score #from-Y Core run data get entity 0-a-17a7-3-0 Pos[1] 1000
execute store result score #from-Z Core run data get entity 0-a-17a7-3-0 Pos[2] 1000
execute store result score #to-X Core run data get entity 0-a-17a7-3-5 Pos[0] 1000
execute store result score #to-Y Core run data get entity 0-a-17a7-3-5 Pos[1] 1000
execute store result score #to-Z Core run data get entity 0-a-17a7-3-5 Pos[2] 1000
execute at 0-a-17a7-3-0 facing entity 0-a-17a7-3-5 feet positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ^ ^ ^1 ~ ~
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
scoreboard players operation #distance-a Core > #to-X Core
scoreboard players operation #distance-a Core > #to-Y Core
scoreboard players operation #distance-a Core > #to-Z Core
scoreboard players operation #distance-a Core *= #10000 Core
scoreboard players operation #distance-a Core /= #c-max Core

scoreboard players reset #c-max Core
scoreboard players reset #distance-b Core
execute store result score #from-X Core run data get entity 0-a-17a7-3-5 Pos[0] 1000
execute store result score #from-Y Core run data get entity 0-a-17a7-3-5 Pos[1] 1000
execute store result score #from-Z Core run data get entity 0-a-17a7-3-5 Pos[2] 1000
execute store result score #to-X Core run data get entity 0-a-17a7-3-1 Pos[0] 1000
execute store result score #to-Y Core run data get entity 0-a-17a7-3-1 Pos[1] 1000
execute store result score #to-Z Core run data get entity 0-a-17a7-3-1 Pos[2] 1000
execute at 0-a-17a7-3-5 facing entity 0-a-17a7-3-1 feet positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ^ ^ ^1 ~ ~
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
scoreboard players operation #distance-b Core > #to-X Core
scoreboard players operation #distance-b Core > #to-Y Core
scoreboard players operation #distance-b Core > #to-Z Core
scoreboard players operation #distance-b Core *= #10000 Core
scoreboard players operation #distance-b Core /= #c-max Core
execute as 0-a-17a7-3-0 at @s run tp @s ~ ~ ~ facing entity 0-a-17a7-3-5
execute as 0-a-17a7-3-5 at @s run tp @s ~ ~ ~ facing entity 0-a-17a7-3-1
scoreboard players operation #distance-a Core /= $count Input
scoreboard players operation #distance-b Core /= $count Input
execute as 0-a-17a7-3-0 run scoreboard players set @s Core 0
execute as 0-a-17a7-3-5 run scoreboard players set @s Core 0
scoreboard players set #t Core 0
tp 0-a-17a7-3-2 0-a-17a7-3-0
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/bezier/line/quadratic/recursive