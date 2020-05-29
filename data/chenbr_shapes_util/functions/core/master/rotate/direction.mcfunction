summon minecraft:area_effect_cloud ^ ^ ^1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[chenbr_shapes_util-temp]}
execute as @e[limit=1,tag=chenbr_shapes_util-temp] at @s run function chenbr_shapes_util:core/master/rotate/run
execute at @s run tp @s ~ ~ ~ facing entity @e[limit=1,tag=chenbr_shapes_util-temp]
kill @e[limit=1,tag=chenbr_shapes_util-temp]