#> chenbr_shapes_util:core/circle/draw
# @internal

execute if score $ellipse-modifier CB03_Input matches 0 run scoreboard players set $ellipse-modifier CB03_Input 100
execute unless score $ellipse-modifier CB03_Input = $ellipse-modifier CB03_Input run scoreboard players set $ellipse-modifier CB03_Input 100
execute as 0-a-17a7-3-3 run scoreboard players operation @s CB03_Core = $start CB03_Input
execute as 0-a-17a7-3-3 unless score $ellipse-modifier CB03_Input matches 100 run scoreboard players operation @s CB03_Core -= $ellipse-rotate CB03_Input
execute as 0-a-17a7-3-3 unless score $ellipse-modifier CB03_Input matches 100 run scoreboard players operation @s CB03_Core %= #3600 CB03_Core
execute as 0-a-17a7-3-3 run scoreboard players operation @s CB03_Core *= #1000 CB03_Core
execute as 0-a-17a7-3-3 at @s rotated 0 0 run function chenbr_shapes_util:core/master/util/rotate/22
scoreboard players set #particle-distance CB03_Core 3600000
scoreboard players operation #particle-distance CB03_Core /= $count CB03_Input
execute store result score #center-X CB03_Core run data get entity 0-a-17a7-3-2 Pos[0] 100
execute store result score #center-Y CB03_Core run data get entity 0-a-17a7-3-2 Pos[1] 100
execute store result score #center-Z CB03_Core run data get entity 0-a-17a7-3-2 Pos[2] 100
execute as 0-a-17a7-3-3 run scoreboard players operation @s CB03_Core = #particle-distance CB03_Core
scoreboard players set #tp-count CB03_Core 0
execute as 0-a-17a7-3-3 at @s run function chenbr_shapes_util:core/circle/recursive