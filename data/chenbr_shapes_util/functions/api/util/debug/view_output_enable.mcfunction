#> chenbr_shapes_util:api/util/debug/view_output_enable
# @public
# @input
#   詳しい説明はREADMEを参照してください。

execute at @e[type=area_effect_cloud,tag=chenbr_shapes_util-output] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
schedule function chenbr_shapes_util:api/util/debug/view_output_enable 10t