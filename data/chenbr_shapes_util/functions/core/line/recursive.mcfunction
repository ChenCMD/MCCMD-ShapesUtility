#> chenbr_shapes_util:core/line/recursive
# @internal

function chenbr_shapes_util:core/master/util/move/31
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[chenbr_shapes_util-output,chenbr_shapes_util-unfinished]}
execute facing entity @s feet run tp @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished,tag=!chenbr_shapes_util-temp,distance=..0.0001,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished,tag=!chenbr_shapes_util-temp,distance=..0.0001,limit=1] CB03_SummonOrder = #summon-count CB03_Core
scoreboard players add #summon-count CB03_Core 1
scoreboard players add #tp-count CB03_Core 1
execute if score $count CB03_Input > #tp-count CB03_Core run scoreboard players operation @s CB03_Core = #particle-distance CB03_Core
execute if score $count CB03_Input > #tp-count CB03_Core at @s run function chenbr_shapes_util:core/line/recursive