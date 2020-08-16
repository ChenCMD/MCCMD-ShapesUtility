#> chenbr_shapes_util:core/bezier/polygon/quadratic/recursive
# @internal

execute as @e[tag=chenbr_shapes_util-temp] if score @s CB03_SummonOrder = #from CB03_Core at @s run tp 0-a-17a7-3-0 ~ ~ ~
execute as @e[tag=chenbr_shapes_util-temp] if score @s CB03_SummonOrder = #to CB03_Core at @s run tp 0-a-17a7-3-1 ~ ~ ~
scoreboard players reset #c-max CB03_Core
execute store result score #from-X CB03_Core run data get entity 0-a-17a7-3-0 Pos[0] 1000
execute store result score #from-Y CB03_Core run data get entity 0-a-17a7-3-0 Pos[1] 1000
execute store result score #from-Z CB03_Core run data get entity 0-a-17a7-3-0 Pos[2] 1000
execute store result score #to-X CB03_Core run data get entity 0-a-17a7-3-1 Pos[0] 1000
execute store result score #to-Y CB03_Core run data get entity 0-a-17a7-3-1 Pos[1] 1000
execute store result score #to-Z CB03_Core run data get entity 0-a-17a7-3-1 Pos[2] 1000
execute at 0-a-17a7-3-0 facing entity 0-a-17a7-3-1 feet positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ^ ^ ^1 ~ ~
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
execute as 0-a-17a7-3-5 run scoreboard players operation @s CB03_Core > #to-X CB03_Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s CB03_Core > #to-Y CB03_Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s CB03_Core > #to-Z CB03_Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s CB03_Core *= #10000 CB03_Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s CB03_Core /= #c-max CB03_Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s CB03_Core /= #2 CB03_Core
execute as 0-a-17a7-3-5 at 0-a-17a7-3-0 facing entity 0-a-17a7-3-1 feet run function chenbr_shapes_util:core/master/util/move/31
execute as 0-a-17a7-3-5 run scoreboard players operation @s CB03_Core = #modifier-base CB03_Core
execute if score #center-dir CB03_Core matches -1 as 0-a-17a7-3-5 at @s facing entity 0-a-17a7-3-1 feet rotated ~-90 ~ run function chenbr_shapes_util:core/master/util/move/31
execute if score #center-dir CB03_Core matches 01 as 0-a-17a7-3-5 at @s facing entity 0-a-17a7-3-1 feet rotated ~090 ~ run function chenbr_shapes_util:core/master/util/move/31
function chenbr_shapes_util:core/bezier/line/quadratic/draw
scoreboard players add #from CB03_Core 1
scoreboard players add #to CB03_Core 1
scoreboard players operation #to CB03_Core %= $corner CB03_Input
execute if score #from CB03_Core < $corner CB03_Input run function chenbr_shapes_util:core/bezier/polygon/quadratic/recursive