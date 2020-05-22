# RawInput:    2が中心,視線方向不問
# RawDistance: {360/corner}/count
# RawOutput:   召喚Entityは次のEntityの視線方向を持つ
# public static Entity drawPolygonCurve(Entity 0-a-17a7-3-2, int $radius, int $corner, int $jump, int $count, int $start, int $vezier-modifier, int $ellipse-modifier, int $ellipse-rotate) {
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
scoreboard players operation #modifier-base Core = $vezier-modifier Input
scoreboard players operation #modifier-base Core *= #100 Core
#corner * 10 / jump == 20: null
#corner * 10 / jump >  20: +90
#corner * 10 / jump <  20: -90
#ellipse-modifier < 0    : *-1 //上記の結果の反転
scoreboard players operation #temp Core = $corner Input
scoreboard players operation #temp Core *= #10 Core
scoreboard players operation #temp Core /= $jump Input
execute if score #temp Core matches 20 run scoreboard players set #center-dir Core 0
execute if score #temp Core matches ..20 run scoreboard players set #center-dir Core -1
execute if score #temp Core matches 20.. run scoreboard players set #center-dir Core 1
execute if score $ellipse-modifier Input matches ..-1 run scoreboard players operation #center-dir Core *= #-1 Core
execute if score $vezier-modifier Input matches ..-1 run scoreboard players operation #center-dir Core *= #-1 Core
execute if score $vezier-modifier Input matches ..-1 run scoreboard players operation #modifier-base Core *= #-1 Core
execute unless score #center-dir Core matches 0 run function chenbr_shapes_util:core/bezier/polygon/quadratic/recursive
execute if score #center-dir Core matches 0 run function chenbr_shapes_util:core/polygon/recursive
kill @e[tag=temp]