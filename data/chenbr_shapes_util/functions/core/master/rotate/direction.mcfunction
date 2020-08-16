#> chenbr_shapes_util:core/master/rotate/direction
# @internal

summon minecraft:area_effect_cloud ^ ^ ^1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[chenbr_shapes_util-temp]}
execute as @e[limit=1,type=area_effect_cloud,tag=chenbr_shapes_util-temp] at @s run function chenbr_shapes_util:core/master/rotate/run
execute at @s facing entity @e[limit=1,type=area_effect_cloud,tag=chenbr_shapes_util-temp] feet run tp @s ~ ~ ~ ~ ~
kill @e[limit=1,type=area_effect_cloud,tag=chenbr_shapes_util-temp]