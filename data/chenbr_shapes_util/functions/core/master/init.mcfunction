#define objective Input from-scoreで使用される座標等の引数の参照元
#define score_holder $from-X 100倍した値を入力すること Default: null
#define score_holder $from-Y 100倍した値を入力すること Default: null
#define score_holder $from-X 100倍した値を入力すること Default: null
#define score_holder $to-X 100倍した値を入力すること Default: null
#define score_holder $to-Y 100倍した値を入力すること Default: null
#define score_holder $to-X 100倍した値を入力すること Default: null
#define score_holder $count 全体でいくつの座標を出力するか Default: null
#define score_holder $start 開始角(度数法)の入力 Default: 0

#define tag chenbr_shapes_util-from
#define tag chenbr_shapes_util-to
#define tag chenbr_shapes_util-output

#alias entity Entity0 0-a-17a7-3-0
#alias entity Entity1 0-a-17a7-3-1
#alias entity Entity2 0-a-17a7-3-2

#define objective Core 内部計算等で使用される 外部からの参照厳禁
#define score_holder #particle-distance
#define score_holder #tp-count
#define storage chenbr:shapes_util Input

scoreboard objectives add Input dummy
scoreboard objectives add SummonOrder dummy
scoreboard objectives add RunID dummy
scoreboard objectives add Core dummy
scoreboard players set #2 Core 2
execute unless data storage chenbr:shapes_util Install run data merge storage chenbr:shapes_util {Input:[],Install:1b}
#execute unless entity 0-a-17a7-3-0 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUIDMost:661415L,UUIDLeast:844424930131968L,Tags:["0-a-17a7-3-0"]}
#execute unless entity 0-a-17a7-3-1 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUIDMost:661415L,UUIDLeast:844424930131969L,Tags:["0-a-17a7-3-1"]}
#execute unless entity 0-a-17a7-3-2 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUIDMost:661415L,UUIDLeast:844424930131970L,Tags:["0-a-17a7-3-2"]}

execute unless entity 0-a-17a7-3-0 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Small:1b,UUIDMost:661415L,UUIDLeast:844424930131968L,Tags:["0-a-17a7-3-0"]}
execute unless entity 0-a-17a7-3-1 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Small:1b,UUIDMost:661415L,UUIDLeast:844424930131969L,Tags:["0-a-17a7-3-1"]}
execute unless entity 0-a-17a7-3-2 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Small:1b,UUIDMost:661415L,UUIDLeast:844424930131970L,Tags:["0-a-17a7-3-2"]}