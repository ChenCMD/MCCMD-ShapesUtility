#> chenbr_shapes_util:api/util/debug/view_output_enable
#
# 図形のデバッグ描画を有効化します
#
# @public

execute at @e[type=area_effect_cloud,tag=chenbr_shapes_util-output] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
schedule function chenbr_shapes_util:api/util/debug/view_output_enable 10t