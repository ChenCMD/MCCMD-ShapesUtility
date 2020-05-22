function chenbr_shapes_util:core/master/util/move/31
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:0b,Tags:[chenbr_shapes_util-output,unfinished]}
execute facing entity @s feet run tp @e[tag=chenbr_shapes_util-output,distance=..0.000001] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=chenbr_shapes_util-output,tag=!temp,distance=..0.000001] SummonOrder = #summon-count Core
scoreboard players add #summon-count Core 1
scoreboard players add #tp-count Core 1
execute if score $count Input >= #tp-count Core run scoreboard players operation @s Core = #particle-distance Core
execute if score $count Input >= #tp-count Core at @s run function chenbr_shapes_util:core/line/recursive