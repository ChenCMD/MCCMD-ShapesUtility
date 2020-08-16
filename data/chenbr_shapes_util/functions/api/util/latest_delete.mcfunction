#> chenbr_shapes_util:api/util/latest_delete
#
# 最後に生成した図形を削除します
#
# @public

execute as @e[type=area_effect_cloud,tag=chenbr_shapes_util-output] if score @s CB03_RunID = #LatestRunID CB03_RunID run kill @s