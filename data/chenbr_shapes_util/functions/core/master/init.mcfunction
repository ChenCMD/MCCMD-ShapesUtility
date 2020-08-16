#> chenbr_shapes_util:core/master/init
# @internal

#> Input
# @public from: ShapesUtility
    #declare storage chenbr:shapes_util
    scoreboard objectives add CB03_Input dummy
#> 召喚順スコア
# @public from: ShapesUtility
    scoreboard objectives add CB03_SummonOrder dummy
#> 実行回スコア
# @public from: ShapesUtility
    scoreboard objectives add CB03_RunID dummy
#> 処理用
# @internal
    #alias entity 0 0a-17a7-3-0
    #alias entity 1 0a-17a7-3-1
    #alias entity 2 0a-17a7-3-2
    #alias entity 3 0a-17a7-3-3
    #alias entity 4 0a-17a7-3-4
    #alias entity 5 0a-17a7-3-5
    #alias entity 6 0a-17a7-3-6
    #alias entity 7 0a-17a7-3-7
    #alias entity 8 0a-17a7-3-8
    #alias entity 9 0a-17a7-3-9
    #declare score_holder #-1
    #declare score_holder #2
    #declare score_holder #10
    #declare score_holder #100
    #declare score_holder #360
    #declare score_holder #1000
    #declare score_holder #1024
    #declare score_holder #3600
    #declare score_holder #10000
    scoreboard objectives add CB03_Core dummy

scoreboard players set #-1 CB03_Core -1
scoreboard players set #2 CB03_Core 2
scoreboard players set #10 CB03_Core 10
scoreboard players set #100 CB03_Core 100
scoreboard players set #360 CB03_Core 360
scoreboard players set #1000 CB03_Core 1000
scoreboard players set #1024 CB03_Core 1024
scoreboard players set #3600 CB03_Core 3600
scoreboard players set #10000 CB03_Core 10000
execute unless data storage chenbr:shapes_util Install run data merge storage chenbr:shapes_util {InputPos:[],InputRotation:[],Install:1b}
execute unless entity 0-a-17a7-3-0 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 0]}
execute unless entity 0-a-17a7-3-1 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 1]}
execute unless entity 0-a-17a7-3-2 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 2]}
execute unless entity 0-a-17a7-3-3 run summon area_effect_cloud 0.0 0.0 0.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 3]}
execute unless entity 0-a-17a7-3-4 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 4]}
execute unless entity 0-a-17a7-3-5 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 5]}
execute unless entity 0-a-17a7-3-6 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 6]}
execute unless entity 0-a-17a7-3-7 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 7]}
execute unless entity 0-a-17a7-3-8 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 661415, 196608, 8]}