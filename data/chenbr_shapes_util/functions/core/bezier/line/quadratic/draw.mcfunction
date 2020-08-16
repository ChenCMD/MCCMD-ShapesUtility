#> chenbr_shapes_util:core/bezier/line/quadratic/draw
# @internal


scoreboard players reset #c-max CB03_Core
scoreboard players reset #distance-a CB03_Core
execute store result score #from-X CB03_Core run data get entity 0-a-17a7-3-0 Pos[0] 1000
execute store result score #from-Y CB03_Core run data get entity 0-a-17a7-3-0 Pos[1] 1000
execute store result score #from-Z CB03_Core run data get entity 0-a-17a7-3-0 Pos[2] 1000
execute store result score #to-X CB03_Core run data get entity 0-a-17a7-3-5 Pos[0] 1000
execute store result score #to-Y CB03_Core run data get entity 0-a-17a7-3-5 Pos[1] 1000
execute store result score #to-Z CB03_Core run data get entity 0-a-17a7-3-5 Pos[2] 1000
execute at 0-a-17a7-3-0 facing entity 0-a-17a7-3-5 feet positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ^ ^ ^1 ~ ~
execute store result score #c-X CB03_Core run data get entity 0-a-17a7-3-2 Pos[0] 1000
execute store result score #c-Y CB03_Core run data get entity 0-a-17a7-3-2 Pos[1] 1000
execute store result score #c-Z CB03_Core run data get entity 0-a-17a7-3-2 Pos[2] 1000
scoreboard players operation #to-X CB03_Core -= #from-X CB03_Core
scoreboard players operation #to-Y CB03_Core -= #from-Y CB03_Core
scoreboard players operation #to-Z CB03_Core -= #from-Z CB03_Core
execute if score #to-X CB03_Core matches ..-1 run scoreboard players operation #to-X CB03_Core *= #-1 CB03_Core
execute if score #to-Y CB03_Core matches ..-1 run scoreboard players operation #to-Y CB03_Core *= #-1 CB03_Core
execute if score #to-Z CB03_Core matches ..-1 run scoreboard players operation #to-Z CB03_Core *= #-1 CB03_Core
execute if score #c-X CB03_Core matches ..-1 run scoreboard players operation #c-X CB03_Core *= #-1 CB03_Core
execute if score #c-Y CB03_Core matches ..-1 run scoreboard players operation #c-Y CB03_Core *= #-1 CB03_Core
execute if score #c-Z CB03_Core matches ..-1 run scoreboard players operation #c-Z CB03_Core *= #-1 CB03_Core
scoreboard players operation #c-max CB03_Core > #c-X CB03_Core
scoreboard players operation #c-max CB03_Core > #c-Y CB03_Core
scoreboard players operation #c-max CB03_Core > #c-Z CB03_Core
scoreboard players operation #distance-a CB03_Core > #to-X CB03_Core
scoreboard players operation #distance-a CB03_Core > #to-Y CB03_Core
scoreboard players operation #distance-a CB03_Core > #to-Z CB03_Core
scoreboard players operation #distance-a CB03_Core *= #10000 CB03_Core
scoreboard players operation #distance-a CB03_Core /= #c-max CB03_Core
scoreboard players reset #c-max CB03_Core
scoreboard players reset #distance-b CB03_Core
execute store result score #from-X CB03_Core run data get entity 0-a-17a7-3-5 Pos[0] 1000
execute store result score #from-Y CB03_Core run data get entity 0-a-17a7-3-5 Pos[1] 1000
execute store result score #from-Z CB03_Core run data get entity 0-a-17a7-3-5 Pos[2] 1000
execute store result score #to-X CB03_Core run data get entity 0-a-17a7-3-1 Pos[0] 1000
execute store result score #to-Y CB03_Core run data get entity 0-a-17a7-3-1 Pos[1] 1000
execute store result score #to-Z CB03_Core run data get entity 0-a-17a7-3-1 Pos[2] 1000
execute at 0-a-17a7-3-5 facing entity 0-a-17a7-3-1 feet positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ^ ^ ^1 ~ ~
execute store result score #c-X CB03_Core run data get entity 0-a-17a7-3-2 Pos[0] 1000
execute store result score #c-Y CB03_Core run data get entity 0-a-17a7-3-2 Pos[1] 1000
execute store result score #c-Z CB03_Core run data get entity 0-a-17a7-3-2 Pos[2] 1000
scoreboard players operation #to-X CB03_Core -= #from-X CB03_Core
scoreboard players operation #to-Y CB03_Core -= #from-Y CB03_Core
scoreboard players operation #to-Z CB03_Core -= #from-Z CB03_Core
execute if score #to-X CB03_Core matches ..-1 run scoreboard players operation #to-X CB03_Core *= #-1 CB03_Core
execute if score #to-Y CB03_Core matches ..-1 run scoreboard players operation #to-Y CB03_Core *= #-1 CB03_Core
execute if score #to-Z CB03_Core matches ..-1 run scoreboard players operation #to-Z CB03_Core *= #-1 CB03_Core
execute if score #c-X CB03_Core matches ..-1 run scoreboard players operation #c-X CB03_Core *= #-1 CB03_Core
execute if score #c-Y CB03_Core matches ..-1 run scoreboard players operation #c-Y CB03_Core *= #-1 CB03_Core
execute if score #c-Z CB03_Core matches ..-1 run scoreboard players operation #c-Z CB03_Core *= #-1 CB03_Core
scoreboard players operation #c-max CB03_Core > #c-X CB03_Core
scoreboard players operation #c-max CB03_Core > #c-Y CB03_Core
scoreboard players operation #c-max CB03_Core > #c-Z CB03_Core
scoreboard players operation #distance-b CB03_Core > #to-X CB03_Core
scoreboard players operation #distance-b CB03_Core > #to-Y CB03_Core
scoreboard players operation #distance-b CB03_Core > #to-Z CB03_Core
scoreboard players operation #distance-b CB03_Core *= #10000 CB03_Core
scoreboard players operation #distance-b CB03_Core /= #c-max CB03_Core
execute as 0-a-17a7-3-0 at @s facing entity 0-a-17a7-3-5 feet run tp @s ~ ~ ~ ~ ~
execute as 0-a-17a7-3-5 at @s facing entity 0-a-17a7-3-1 feet run tp @s ~ ~ ~ ~ ~
scoreboard players operation #distance-a CB03_Core /= $count CB03_Input
scoreboard players operation #distance-b CB03_Core /= $count CB03_Input
execute as 0-a-17a7-3-0 run scoreboard players set @s CB03_Core 0
execute as 0-a-17a7-3-5 run scoreboard players set @s CB03_Core 0
scoreboard players set #t CB03_Core 0
tp 0-a-17a7-3-2 0-a-17a7-3-0
execute as 0-a-17a7-3-2 at @s run function chenbr_shapes_util:core/bezier/line/quadratic/recursive