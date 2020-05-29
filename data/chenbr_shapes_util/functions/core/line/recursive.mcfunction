function chenbr_shapes_util:core/master/util/move/31
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[chenbr_shapes_util-output,chenbr_shapes_util-unfinished]}
tp @e[limit=1,tag=chenbr_shapes_util-output,tag=!chenbr_shapes_util-temp,distance=..0.0001] ~ ~ ~ facing entity @s
scoreboard players operation @e[limit=1,tag=chenbr_shapes_util-output,tag=!chenbr_shapes_util-temp,distance=..0.0001] SummonOrder = #summon-count Core
scoreboard players add #summon-count Core 1
scoreboard players add #tp-count Core 1
execute if score $count Input >= #tp-count Core run scoreboard players operation @s Core = #particle-distance Core
execute if score $count Input >= #tp-count Core at @s run function chenbr_shapes_util:core/line/recursive