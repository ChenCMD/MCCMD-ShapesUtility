function chenbr_shapes_util:core/circle/spin/15
tp 0-a-17a7-3-4 ^ ^ ^1
execute store result score #particle-pos-X Core run data get entity 0-a-17a7-3-4 Pos[0] 100
execute store result score #particle-pos-Z Core run data get entity 0-a-17a7-3-4 Pos[2] 100
scoreboard players operation #particle-pos-X Core *= $radius Input
scoreboard players operation #particle-pos-Z Core *= $radius Input
scoreboard players operation #particle-pos-X Core /= #100 Core
scoreboard players operation #particle-pos-Z Core /= #100 Core
scoreboard players operation #particle-pos-X Core += #center-X Core
scoreboard players operation #particle-pos-Y Core = #center-Y Core
scoreboard players operation #particle-pos-Z Core += #center-Z Core
execute store result entity 0-a-17a7-3-4 Pos[0] double 0.01 run scoreboard players get #particle-pos-X Core
execute store result entity 0-a-17a7-3-4 Pos[1] double 0.01 run scoreboard players get #particle-pos-Y Core
execute store result entity 0-a-17a7-3-4 Pos[2] double 0.01 run scoreboard players get #particle-pos-Z Core
execute at 0-a-17a7-3-4 run summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:0b,Tags:[chenbr_shapes_util-output]}
execute at 0-a-17a7-3-4 run scoreboard players operation @e[tag=chenbr_shapes_util-output,distance=..0.001] SummonOrder = #summon-count Core

scoreboard players add #summon-count Core 1
scoreboard players add #tp-count Core 1
execute if score $count Input >= #tp-count Core run scoreboard players operation #particle-distanceC Core = #particle-distance Core
execute if score $count Input >= #tp-count Core at @s run function chenbr_shapes_util:core/circle/spin_recursive