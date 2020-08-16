#> chenbr_shapes_util:core/master/rotate/common
# @internal

scoreboard players operation #distanceC CB03_Core = $distance CB03_Input
scoreboard players operation #distanceC CB03_Core *= #1000 CB03_Core
execute store result entity 0-a-17a7-3-3 Rotation[0] float -1 run data get entity @s Rotation[0]
execute at 0-a-17a7-3-3 run tp 0-a-17a7-3-4 ^ ^ ^1
execute store result score #yawSin CB03_Core run data get entity 0-a-17a7-3-4 Pos[0] -10000
execute store result score #yawCos CB03_Core run data get entity 0-a-17a7-3-4 Pos[2] 10000
execute store result entity 0-a-17a7-3-3 Rotation[0] float 1 run data get entity @s Rotation[1]
execute at 0-a-17a7-3-3 run tp 0-a-17a7-3-4 ^ ^ ^1
execute store result score #pitchSin CB03_Core run data get entity 0-a-17a7-3-4 Pos[0] -10000
execute store result score #pitchCos CB03_Core run data get entity 0-a-17a7-3-4 Pos[2] 10000
execute anchored eyes run tp 0-a-17a7-3-4 ^ ^ ^
execute store result score #baseX CB03_Core run data get entity 0-a-17a7-3-4 Pos[0] 10000
execute store result score #baseY CB03_Core run data get entity 0-a-17a7-3-4 Pos[1] 10000
execute store result score #baseZ CB03_Core run data get entity 0-a-17a7-3-4 Pos[2] 10000