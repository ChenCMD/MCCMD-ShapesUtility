execute store result entity 0-a-17a7-3-4 Rotation[0] float -0.1 run scoreboard players get $ellipse-rotate CB03_Input
execute at 0-a-17a7-3-4 positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-4 ^ ^ ^1
execute store result score #sin CB03_Core run data get entity 0-a-17a7-3-4 Pos[0] -10000
execute store result score #cos CB03_Core run data get entity 0-a-17a7-3-4 Pos[2] 10000
scoreboard players operation #vexX CB03_Core = #particle-pos-X CB03_Core
scoreboard players operation #vexY CB03_Core = #particle-pos-Z CB03_Core
scoreboard players operation #X CB03_Core = #vexX CB03_Core
scoreboard players operation #X CB03_Core *= #cos CB03_Core
scoreboard players operation #temp CB03_Core = #vexY CB03_Core
scoreboard players operation #temp CB03_Core *= #sin CB03_Core
scoreboard players operation #X CB03_Core -= #temp CB03_Core
scoreboard players operation #Y CB03_Core = #vexX CB03_Core
scoreboard players operation #Y CB03_Core *= #sin CB03_Core
scoreboard players operation #temp CB03_Core = #vexY CB03_Core
scoreboard players operation #temp CB03_Core *= #cos CB03_Core
scoreboard players operation #Y CB03_Core += #temp CB03_Core
scoreboard players operation #X CB03_Core /= #10000 CB03_Core
scoreboard players operation #Y CB03_Core /= #10000 CB03_Core
scoreboard players operation #particle-pos-X CB03_Core = #X CB03_Core
scoreboard players operation #particle-pos-Z CB03_Core = #Y CB03_Core