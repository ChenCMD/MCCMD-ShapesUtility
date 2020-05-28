scoreboard players operation #tempCount Core = $count Input
scoreboard players operation $count Input = $corner Input
function chenbr_shapes_util:core/circle/draw
scoreboard players set #summon-count Core 0
scoreboard players operation $count Input = #tempCount Core
tag @e[tag=unfinished,tag=chenbr_shapes_util-output] add temp
scoreboard players set #from Core 0
scoreboard players set #to Core 0
scoreboard players operation #to Core += $jump Input
scoreboard players operation #to Core %= $corner Input
function chenbr_shapes_util:core/polygon/recursive
kill @e[tag=temp]