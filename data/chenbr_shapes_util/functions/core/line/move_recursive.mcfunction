function chenbr_shapes_util:core/line/move/31
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:0b,Tags:[chenbr_shapes_util-output]}
execute facing entity @s feet run tp @e[tag=chenbr_shapes_util-output,distance=..0.001] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=chenbr_shapes_util-output,distance=..0.001] SummonOrder = #summon-count Core
scoreboard players add #summon-count Core 1
scoreboard players add #tp-count Core 1
execute if score $count Input >= #tp-count Core run scoreboard players operation #particle-distanceC Core = #particle-distance Core
execute if score $count Input >= #tp-count Core at @s run function chenbr_shapes_util:core/line/move_recursive