scoreboard players set #summon-count Core 0
scoreboard players add #LatestRunID RunID 1
execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] run scoreboard players operation @s RunID = #LatestRunID RunID
tag @e[type=area_effect_cloud,tag=chenbr_shapes_util-output,tag=chenbr_shapes_util-unfinished] remove chenbr_shapes_util-unfinished