#> chenbr_shapes_util:core/circle/recursive
# @internal

function chenbr_shapes_util:core/master/util/rotate/22
tp 0-a-17a7-3-4 ^ ^ ^1
execute store result score #particle-pos-X CB03_Core run data get entity 0-a-17a7-3-4 Pos[0] 100
execute store result score #particle-pos-Z CB03_Core run data get entity 0-a-17a7-3-4 Pos[2] 100
scoreboard players operation #particle-pos-X CB03_Core *= $radius CB03_Input
scoreboard players operation #particle-pos-Z CB03_Core *= $radius CB03_Input
scoreboard players operation #particle-pos-Z CB03_Core *= $ellipse-modifier CB03_Input
scoreboard players operation #particle-pos-Z CB03_Core /= #100 CB03_Core
execute unless score $ellipse-modifier CB03_Input matches 100 run function chenbr_shapes_util:core/master/rotate/around_y
scoreboard players operation #particle-pos-X CB03_Core /= #100 CB03_Core
scoreboard players operation #particle-pos-Z CB03_Core /= #100 CB03_Core
scoreboard players operation #particle-pos-X CB03_Core += #center-X CB03_Core
scoreboard players operation #particle-pos-Y CB03_Core = #center-Y CB03_Core
scoreboard players operation #particle-pos-Z CB03_Core += #center-Z CB03_Core
execute store result entity 0-a-17a7-3-4 Pos[0] double 0.01 run scoreboard players get #particle-pos-X CB03_Core
execute store result entity 0-a-17a7-3-4 Pos[1] double 0.01 run scoreboard players get #particle-pos-Y CB03_Core
execute store result entity 0-a-17a7-3-4 Pos[2] double 0.01 run scoreboard players get #particle-pos-Z CB03_Core
execute at 0-a-17a7-3-4 run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[chenbr_shapes_util-output,chenbr_shapes_util-unfinished]}
execute at 0-a-17a7-3-4 run scoreboard players operation @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished,tag=!chenbr_shapes_util-temp,distance=..0.0001,limit=1] CB03_SummonOrder = #summon-count CB03_Core
scoreboard players add #summon-count CB03_Core 1
scoreboard players add #tp-count CB03_Core 1
execute if score $count CB03_Input > #tp-count CB03_Core run scoreboard players operation @s CB03_Core = #particle-distance CB03_Core
execute if score $count CB03_Input > #tp-count CB03_Core at @s run function chenbr_shapes_util:core/circle/recursive