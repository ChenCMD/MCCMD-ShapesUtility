execute as 0-a-17a7-3-0 at @s run function chenbr_shapes_util:core/master/util/move/31
execute as 0-a-17a7-3-5 at @s run function chenbr_shapes_util:core/master/util/move/31
scoreboard players reset #c-max Core
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
execute as 0-a-17a7-3-2 run scoreboard players operation @s Core > #to-X Core
execute as 0-a-17a7-3-2 run scoreboard players operation @s Core > #to-Y Core
execute as 0-a-17a7-3-2 run scoreboard players operation @s Core > #to-Z Core
execute as 0-a-17a7-3-2 run scoreboard players operation @s Core *= #10000 Core
execute as 0-a-17a7-3-2 run scoreboard players operation @s Core /= #c-max Core
execute as 0-a-17a7-3-2 run scoreboard players operation @s Core /= $count Input
execute as 0-a-17a7-3-2 run scoreboard players operation @s Core *= #t Core
execute at 0-a-17a7-3-0 facing entity 0-a-17a7-3-5 feet run function chenbr_shapes_util:core/master/util/move/31
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:0b,Tags:[chenbr_shapes_util-output,unfinished]}
tp @e[tag=chenbr_shapes_util-output,distance=..0.000001] ~ ~ ~ facing entity @s
scoreboard players operation @e[tag=chenbr_shapes_util-output,tag=!temp,distance=..0.000001] SummonOrder = #summon-count Core
scoreboard players add #summon-count Core 1
scoreboard players add #t Core 1
execute as 0-a-17a7-3-0 run scoreboard players operation @s Core = #distance-a Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s Core = #distance-b Core
execute if score $count Input >= #t Core at 0-a-17a7-3-2 run function chenbr_shapes_util:core/bezier/line/quadratic/recursive