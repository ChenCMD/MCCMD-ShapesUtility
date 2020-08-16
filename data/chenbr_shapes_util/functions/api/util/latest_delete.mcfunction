#> chenbr_shapes_util:api/util/latest_delete
# @public
# @input
#   詳しい説明はREADMEを参照してください。

execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-output] if score @s CB03_RunID = #LatestRunID CB03_RunID run kill @s