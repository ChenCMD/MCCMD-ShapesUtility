execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-temp] if score @s CB03_SummonOrder = #from CB03_Core at @s run tp 0-a-17a7-3-0 ~ ~ ~
execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-temp] if score @s CB03_SummonOrder = #to CB03_Core at @s run tp 0-a-17a7-3-1 ~ ~ ~
function chenbr_shapes_util:core/line/draw
scoreboard players add #from CB03_Core 1
scoreboard players add #to CB03_Core 1
scoreboard players operation #to CB03_Core %= $corner CB03_Input
execute if score #from CB03_Core < $corner CB03_Input run function chenbr_shapes_util:core/polygon/recursive