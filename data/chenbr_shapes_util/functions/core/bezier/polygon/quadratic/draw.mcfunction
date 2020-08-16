#> chenbr_shapes_util:core/bezier/polygon/quadratic/draw
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
scoreboard players operation #modifier-base CB03_Core = $vezier-modifier CB03_Input
scoreboard players operation #modifier-base CB03_Core *= #100 CB03_Core
scoreboard players operation #temp CB03_Core = $corner CB03_Input
scoreboard players operation #temp CB03_Core *= #10 CB03_Core
scoreboard players operation #temp CB03_Core /= $jump CB03_Input
execute if score #temp CB03_Core matches 20 run scoreboard players set #center-dir CB03_Core 0
execute if score #temp CB03_Core matches ..20 run scoreboard players set #center-dir CB03_Core -1
execute if score #temp CB03_Core matches 20.. run scoreboard players set #center-dir CB03_Core 1
execute if score $ellipse-modifier CB03_Input matches ..-1 run scoreboard players operation #center-dir CB03_Core *= #-1 CB03_Core
execute if score $vezier-modifier CB03_Input matches ..-1 run scoreboard players operation #center-dir CB03_Core *= #-1 CB03_Core
execute if score $vezier-modifier CB03_Input matches ..-1 run scoreboard players operation #modifier-base CB03_Core *= #-1 CB03_Core
execute unless score #center-dir CB03_Core matches 0 run function chenbr_shapes_util:core/bezier/polygon/quadratic/recursive
execute if score #center-dir CB03_Core matches 0 run function chenbr_shapes_util:core/polygon/recursive
kill @e[type=area_effect_cloud,tag=chenbr_shapes_util-temp]