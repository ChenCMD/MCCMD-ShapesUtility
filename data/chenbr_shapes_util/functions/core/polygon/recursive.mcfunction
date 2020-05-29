execute as @e[tag=chenbr_shapes_util-temp] if score @s SummonOrder = #from Core at @s run tp 0-a-17a7-3-0 ~ ~ ~
execute as @e[tag=chenbr_shapes_util-temp] if score @s SummonOrder = #to Core at @s run tp 0-a-17a7-3-1 ~ ~ ~
function chenbr_shapes_util:core/line/draw
scoreboard players add #from Core 1
scoreboard players add #to Core 1
scoreboard players operation #to Core %= $corner Input
execute if score #from Core < $corner Input run function chenbr_shapes_util:core/polygon/recursive