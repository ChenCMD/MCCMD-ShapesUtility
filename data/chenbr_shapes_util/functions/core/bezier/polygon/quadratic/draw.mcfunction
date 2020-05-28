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