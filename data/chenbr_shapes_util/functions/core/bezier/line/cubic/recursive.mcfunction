#> chenbr_shapes_util:core/bezier/line/cubic/recursive
# @internal

execute as 0-a-17a7-3-0 at @s run function chenbr_shapes_util:core/master/util/move/31
execute as 0-a-17a7-3-5 at @s run function chenbr_shapes_util:core/master/util/move/31
execute as 0-a-17a7-3-6 at @s run function chenbr_shapes_util:core/master/util/move/31
scoreboard players reset #c-max CB03_Core
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
execute as 0-a-17a7-3-7 run scoreboard players operation @s CB03_Core > #to-X CB03_Core
execute as 0-a-17a7-3-7 run scoreboard players operation @s CB03_Core > #to-Y CB03_Core
execute as 0-a-17a7-3-7 run scoreboard players operation @s CB03_Core > #to-Z CB03_Core
execute as 0-a-17a7-3-7 run scoreboard players operation @s CB03_Core *= #10000 CB03_Core
execute as 0-a-17a7-3-7 run scoreboard players operation @s CB03_Core /= #c-max CB03_Core
execute as 0-a-17a7-3-7 run scoreboard players operation @s CB03_Core /= $count CB03_Input
execute as 0-a-17a7-3-7 run scoreboard players operation @s CB03_Core *= #t CB03_Core
execute as 0-a-17a7-3-7 at 0-a-17a7-3-0 facing entity 0-a-17a7-3-5 feet run function chenbr_shapes_util:core/master/util/move/31
scoreboard players reset #c-max CB03_Core
execute store result score #from-X CB03_Core run data get entity 0-a-17a7-3-5 Pos[0] 1000
execute store result score #from-Y CB03_Core run data get entity 0-a-17a7-3-5 Pos[1] 1000
execute store result score #from-Z CB03_Core run data get entity 0-a-17a7-3-5 Pos[2] 1000
execute store result score #to-X CB03_Core run data get entity 0-a-17a7-3-6 Pos[0] 1000
execute store result score #to-Y CB03_Core run data get entity 0-a-17a7-3-6 Pos[1] 1000
execute store result score #to-Z CB03_Core run data get entity 0-a-17a7-3-6 Pos[2] 1000
execute at 0-a-17a7-3-5 facing entity 0-a-17a7-3-6 feet positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ^ ^ ^1 ~ ~
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
execute as 0-a-17a7-3-8 run scoreboard players operation @s CB03_Core > #to-X CB03_Core
execute as 0-a-17a7-3-8 run scoreboard players operation @s CB03_Core > #to-Y CB03_Core
execute as 0-a-17a7-3-8 run scoreboard players operation @s CB03_Core > #to-Z CB03_Core
execute as 0-a-17a7-3-8 run scoreboard players operation @s CB03_Core *= #10000 CB03_Core
execute as 0-a-17a7-3-8 run scoreboard players operation @s CB03_Core /= #c-max CB03_Core
execute as 0-a-17a7-3-8 run scoreboard players operation @s CB03_Core /= $count CB03_Input
execute as 0-a-17a7-3-8 run scoreboard players operation @s CB03_Core *= #t CB03_Core
execute as 0-a-17a7-3-8 at 0-a-17a7-3-5 facing entity 0-a-17a7-3-6 feet run function chenbr_shapes_util:core/master/util/move/31
scoreboard players reset #c-max CB03_Core
execute store result score #from-X CB03_Core run data get entity 0-a-17a7-3-7 Pos[0] 1000
execute store result score #from-Y CB03_Core run data get entity 0-a-17a7-3-7 Pos[1] 1000
execute store result score #from-Z CB03_Core run data get entity 0-a-17a7-3-7 Pos[2] 1000
execute store result score #to-X CB03_Core run data get entity 0-a-17a7-3-8 Pos[0] 1000
execute store result score #to-Y CB03_Core run data get entity 0-a-17a7-3-8 Pos[1] 1000
execute store result score #to-Z CB03_Core run data get entity 0-a-17a7-3-8 Pos[2] 1000
execute at 0-a-17a7-3-7 facing entity 0-a-17a7-3-8 feet positioned 0.0 0.0 0.0 run tp 0-a-17a7-3-2 ^ ^ ^1 ~ ~
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
scoreboard players operation @s CB03_Core > #to-X CB03_Core
scoreboard players operation @s CB03_Core > #to-Y CB03_Core
scoreboard players operation @s CB03_Core > #to-Z CB03_Core
scoreboard players operation @s CB03_Core *= #10000 CB03_Core
scoreboard players operation @s CB03_Core /= #c-max CB03_Core
scoreboard players operation @s CB03_Core /= $count CB03_Input
scoreboard players operation @s CB03_Core *= #t CB03_Core
execute at 0-a-17a7-3-7 facing entity 0-a-17a7-3-8 feet run function chenbr_shapes_util:core/master/util/move/31
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[chenbr_shapes_util-output,chenbr_shapes_util-unfinished]}
execute facing entity @s feet run tp @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished,tag=!chenbr_shapes_util-temp,distance=..0.0001,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished,tag=!chenbr_shapes_util-temp,distance=..0.0001,limit=1] CB03_SummonOrder = #summon-count CB03_Core
scoreboard players add #summon-count CB03_Core 1
scoreboard players add #t CB03_Core 1
execute as 0-a-17a7-3-0 run scoreboard players operation @s CB03_Core = #distance-a CB03_Core
execute as 0-a-17a7-3-5 run scoreboard players operation @s CB03_Core = #distance-b CB03_Core
execute as 0-a-17a7-3-6 run scoreboard players operation @s CB03_Core = #distance-c CB03_Core
execute if score $count CB03_Input >= #t CB03_Core at 0-a-17a7-3-2 run function chenbr_shapes_util:core/bezier/line/cubic/recursive