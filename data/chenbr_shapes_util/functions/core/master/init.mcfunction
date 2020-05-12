#define objective Input from-scoreで使用される座標等の引数の参照元
# define score_holder $from-X 線の始点 100倍した値を入力すること
# define score_holder $from-Y 線の始点 100倍した値を入力すること
# define score_holder $from-X 線の始点 100倍した値を入力すること
# define score_holder $to-X 線の終点 100倍した値を入力すること
# define score_holder $to-Y 線の終点 100倍した値を入力すること
# define score_holder $to-X 線の終点 100倍した値を入力すること
# define score_holder $center-X 円の中心 100倍した値を入力すること
# define score_holder $center-Y 円の中心 100倍した値を入力すること
# define score_holder $center-Z 円の中心 100倍した値を入力すること
# define score_holder $angle-Yaw 視点のベクトル 100倍した値を入力すること
# define score_holder $angle-Pitch 視点のベクトル 100倍した値を入力すること
#define score_holder $radius 円の半径 100倍した値を入力すること
#define score_holder $start 円の開始角(度数法) 100倍した値を入力すること
#define score_holder $jump polygonsの何点先と結ぶかの指定
#define score_holder $corner polygonsをn角形にするかの指定
#define score_holder $count 全体でいくつの座標を出力するか
#define score_holder $distance 視点方向からの距離 100倍した値を入力すること

#define tag chenbr_shapes_util-from
#define tag chenbr_shapes_util-to
#define tag chenbr_shapes_util-center
#define tag chenbr_shapes_util-output

#alias entity Entity0 0-a-17a7-3-0
#alias entity Entity1 0-a-17a7-3-1
#alias entity Entity2 0-a-17a7-3-2
#alias entity Entity3 0-a-17a7-3-3
#alias entity Entity4 0-a-17a7-3-4

#define objective Core 内部計算等で使用される 外部からの参照厳禁
#define score_holder #particle-distance
#define score_holder #tp-count
#define storage chenbr:shapes_util Input

scoreboard objectives add Input dummy
scoreboard objectives add SummonOrder dummy
scoreboard objectives add RunID dummy
scoreboard objectives add Core dummy
scoreboard players set #2 Core 2
scoreboard players set #100 Core 100
scoreboard players set #360 Core 360
scoreboard players set #1000 Core 1000
scoreboard players set #10000 Core 10000
scoreboard players set #131072 Core 131072
execute unless data storage chenbr:shapes_util Install run data merge storage chenbr:shapes_util {InputPos:[],InputOther:[],Install:1b}

#execute unless entity 0-a-17a7-3-0 run summon minecraft:area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUIDMost:661415L,UUIDLeast:844424930131968L,Tags:["0-a-17a7-3-0"]}
#execute unless entity 0-a-17a7-3-1 run summon minecraft:area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUIDMost:661415L,UUIDLeast:844424930131969L,Tags:["0-a-17a7-3-1"]}
#execute unless entity 0-a-17a7-3-2 run summon minecraft:area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUIDMost:661415L,UUIDLeast:844424930131970L,Tags:["0-a-17a7-3-2"]}
#execute unless entity 0-a-17a7-3-3 run summon minecraft:area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUIDMost:661415L,UUIDLeast:844424930131971L,Tags:["0-a-17a7-3-3"]}
#execute unless entity 0-a-17a7-3-4 run summon minecraft:area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUIDMost:661415L,UUIDLeast:844424930131972L,Tags:["0-a-17a7-3-4"]}

execute unless entity 0-a-17a7-3-0 run summon armor_stand 0 0 0 {Marker:1b,Invisible:0b,Small:1b,UUIDMost:661415L,UUIDLeast:844424930131968L,Tags:["0-a-17a7-3-0"]}
execute unless entity 0-a-17a7-3-1 run summon armor_stand 0 0 0 {Marker:1b,Invisible:0b,Small:1b,UUIDMost:661415L,UUIDLeast:844424930131969L,Tags:["0-a-17a7-3-1"]}
execute unless entity 0-a-17a7-3-2 run summon armor_stand 0 0 0 {Marker:1b,Invisible:0b,Small:1b,UUIDMost:661415L,UUIDLeast:844424930131970L,Tags:["0-a-17a7-3-2"]}
execute unless entity 0-a-17a7-3-3 run summon armor_stand 0.0 0.0 0.0 {Marker:1b,Invisible:0b,Small:1b,UUIDMost:661415L,UUIDLeast:844424930131971L,Tags:["0-a-17a7-3-3"]}
execute unless entity 0-a-17a7-3-4 run summon armor_stand 0 0 0 {Marker:1b,Invisible:0b,Small:1b,UUIDMost:661415L,UUIDLeast:844424930131972L,Tags:["0-a-17a7-3-4"]}