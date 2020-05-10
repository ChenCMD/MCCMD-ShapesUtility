#distance
scoreboard players operation #distanceC Core = $distance Input
scoreboard players operation #distanceC Core *= #1000 Core
#yaw
tp 0-a-17a7-3-4 0.0 10.0 0.0 0.0 0.0

execute store result entity 0-a-17a7-3-4 Rotation[0] float -1 run data get entity @s Rotation[0]

execute as 0-a-17a7-3-4 at @s run tp @s ^ ^ ^1

execute store result score #yawSin Core run data get entity 0-a-17a7-3-4 Pos[0] -10000
execute store result score #yawCos Core run data get entity 0-a-17a7-3-4 Pos[2] 10000
#pitch
tp 0-a-17a7-3-4 0.0 10.0 0.0 0.0 0.0

execute store result entity 0-a-17a7-3-4 Rotation[0] float 1 run data get entity @s Rotation[1]

execute as 0-a-17a7-3-4 at @s run tp @s ^ ^ ^1

execute store result score #pitchSin Core run data get entity 0-a-17a7-3-4 Pos[0] -10000
execute store result score #pitchCos Core run data get entity 0-a-17a7-3-4 Pos[2] 10000
#base*
execute anchored eyes run tp 0-a-17a7-3-4 ^ ^ ^
execute store result score #baseX Core run data get entity 0-a-17a7-3-4 Pos[0] 10000
execute store result score #baseY Core run data get entity 0-a-17a7-3-4 Pos[1] 10000
execute store result score #baseZ Core run data get entity 0-a-17a7-3-4 Pos[2] 10000