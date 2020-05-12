scoreboard players operation #particle-distanceC Core *= #2 Core
execute if score #particle-distanceC Core matches 0.. run function chenbr_shapes_util:core/line/move/1
execute if score #particle-distanceC Core matches ..-1 positioned ^ ^ ^0.0002 run function chenbr_shapes_util:core/line/move/1