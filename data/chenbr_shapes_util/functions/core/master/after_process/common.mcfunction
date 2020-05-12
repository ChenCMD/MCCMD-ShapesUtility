scoreboard players set #summon-count Core 0
scoreboard players add #RunCount RunID 1
execute as @e[tag=chenbr_shapes_util-output,tag=unfinished] run scoreboard players operation @s RunID = #RunCount RunID
tag @e[tag=chenbr_shapes_util-output,tag=unfinished] remove unfinished