execute as @e[tag=temp] if score @s SummonOrder = #from Core at @s run tp 0-a-17a7-3-0 ~ ~ ~
execute as @e[tag=temp] if score @s SummonOrder = #to Core at @s run tp 0-a-17a7-3-1 ~ ~ ~
scoreboard players reset #c-max Core
execute store result score #from-X Core run data get entity 0-a-17a7-3-0 Pos[0] 1000
execute store result score #from-Y Core run data get entity 0-a-17a7-3-0 Pos[1] 1000
execute store result score #from-Z Core run data get entity 0-a-17a7-3-0 Pos[2] 1000
execute store result score #to-X Core run data get entity 0-a-17a7-3-1 Pos[0] 1000
execute store result score #to-Y Core run data get entity 0-a-17a7-3-1 Pos[1] 1000
execute store result score #to-Z Core run data get entity 0-a-17a7-3-1 Pos[2] 1000
execute at 0-a-17a7-3-0 facing entity 0-a-17a7-3-1 feet positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ^ ^ ^1 ~ ~
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
execute as 0-a-17a7-3-5 run scoreboard players operation @s Core > #to-X Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s Core > #to-Y Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s Core > #to-Z Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s Core *= #10000 Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s Core /= #c-max Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s Core /= #2 Core
execute as 0-a-17a7-3-5 at 0-a-17a7-3-0 facing entity 0-a-17a7-3-1 feet run function chenbr_shapes_util:core/master/util/move/31
execute as 0-a-17a7-3-5 run scoreboard players operation @s Core = #modifier-base Core
execute if score #center-dir Core matches -1 as 0-a-17a7-3-5 at @s facing entity 0-a-17a7-3-1 feet rotated ~-90 ~ run function chenbr_shapes_util:core/master/util/move/31
execute if score #center-dir Core matches 01 as 0-a-17a7-3-5 at @s facing entity 0-a-17a7-3-1 feet rotated ~090 ~ run function chenbr_shapes_util:core/master/util/move/31
function chenbr_shapes_util:core/bezier/line/quadratic/draw
scoreboard players add #from Core 1
scoreboard players add #to Core 1
scoreboard players operation #to Core %= $corner Input
execute if score #from Core < $corner Input run function chenbr_shapes_util:core/bezier/polygon/quadratic/recursive