execute store result entity 0-a-17a7-3-4 Rotation[0] float -0.1 run scoreboard players get $ellipse-rotate Input
execute at 0-a-17a7-3-4 positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-4 ^ ^ ^1
execute store result score #sin Core run data get entity 0-a-17a7-3-4 Pos[0] -10000
execute store result score #cos Core run data get entity 0-a-17a7-3-4 Pos[2] 10000
scoreboard players operation #vexX Core = #particle-pos-X Core
scoreboard players operation #vexY Core = #particle-pos-Z Core
scoreboard players operation #X Core = #vexX Core
scoreboard players operation #X Core *= #cos Core
scoreboard players operation #temp Core = #vexY Core
scoreboard players operation #temp Core *= #sin Core
scoreboard players operation #X Core -= #temp Core
scoreboard players operation #Y Core = #vexX Core
scoreboard players operation #Y Core *= #sin Core
scoreboard players operation #temp Core = #vexY Core
scoreboard players operation #temp Core *= #cos Core
scoreboard players operation #Y Core += #temp Core
scoreboard players operation #X Core /= #10000 Core
scoreboard players operation #Y Core /= #10000 Core
scoreboard players operation #particle-pos-X Core = #X Core
scoreboard players operation #particle-pos-Z Core = #Y Core