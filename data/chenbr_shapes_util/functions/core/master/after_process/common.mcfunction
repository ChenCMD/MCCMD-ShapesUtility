scoreboard players set #summon-count Core 0
scoreboard players add #RunCount RunID 1
execute as @e[tag=chenbr_shapes_util-output] unless score @s RunID = @s RunID run scoreboard players operation @s RunID = #RunCount RunID