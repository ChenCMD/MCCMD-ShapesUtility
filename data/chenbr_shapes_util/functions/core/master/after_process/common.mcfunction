#> chenbr_shapes_util:core/master/after_process/common
# @internal

scoreboard players set #summon-count CB03_Core 0
scoreboard players add #LatestRunID CB03_RunID 1
execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] run scoreboard players operation @s CB03_RunID = #LatestRunID CB03_RunID
tag @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] remove chenbr_shapes_util-unfinished