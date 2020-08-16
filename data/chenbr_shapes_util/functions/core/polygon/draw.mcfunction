#> chenbr_shapes_util:core/polygon/draw
# @internal

scoreboard players operation #tempCount CB03_Core = $count CB03_Input
scoreboard players operation $count CB03_Input = $corner CB03_Input
function chenbr_shapes_util:core/circle/draw
scoreboard players set #summon-count CB03_Core 0
scoreboard players operation $count CB03_Input = #tempCount CB03_Core
tag @e[type=area_effect_cloud,tag=chenbr_shapes_util-unfinished,tag=chenbr_shapes_util-output] add chenbr_shapes_util-temp
scoreboard players set #from CB03_Core 0
scoreboard players set #to CB03_Core 0
scoreboard players operation #to CB03_Core += $jump CB03_Input
scoreboard players operation #to CB03_Core %= $corner CB03_Input
function chenbr_shapes_util:core/polygon/recursive
kill @e[tag=chenbr_shapes_util-temp]