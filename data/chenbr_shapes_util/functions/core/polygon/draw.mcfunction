scoreboard players operation #tempCount Core = $count Input
scoreboard players operation $count Input = $corner Input
function chenbr_shapes_util:core/circle/draw
scoreboard players set #summon-count Core 0
scoreboard players operation $count Input = #tempCount Core
tag @e[type=area_effect_cloud,tag=chenbr_shapes_util-unfinished,tag=chenbr_shapes_util-output] add chenbr_shapes_util-temp
scoreboard players set #from Core 0
scoreboard players set #to Core 0
scoreboard players operation #to Core += $jump Input
scoreboard players operation #to Core %= $corner Input
function chenbr_shapes_util:core/polygon/recursive
kill @e[tag=chenbr_shapes_util-temp]