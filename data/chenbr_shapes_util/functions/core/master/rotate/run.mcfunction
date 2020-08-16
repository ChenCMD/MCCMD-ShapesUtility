#> chenbr_shapes_util:core/master/rotate/run
# @internal

execute store result score #vexX CB03_Core run data get entity @s Pos[0] 10000
execute store result score #vexY CB03_Core run data get entity @s Pos[2] 10000
scoreboard players operation #vexZ CB03_Core = #distanceC CB03_Core
scoreboard players operation #Y CB03_Core = #vexY CB03_Core
scoreboard players operation #Y CB03_Core *= #pitchCos CB03_Core
scoreboard players operation #tmp CB03_Core = #vexZ CB03_Core
scoreboard players operation #tmp CB03_Core *= #pitchSin CB03_Core
scoreboard players operation #Y CB03_Core -= #tmp CB03_Core
scoreboard players operation #Z CB03_Core = #vexY CB03_Core
scoreboard players operation #Z CB03_Core *= #pitchSin CB03_Core
scoreboard players operation #tmp CB03_Core = #vexZ CB03_Core
scoreboard players operation #tmp CB03_Core *= #pitchCos CB03_Core
scoreboard players operation #Z CB03_Core += #tmp CB03_Core
scoreboard players operation #Z CB03_Core /= #10000 CB03_Core
scoreboard players operation #X CB03_Core = #vexX CB03_Core
scoreboard players operation #X CB03_Core *= #yawCos CB03_Core
scoreboard players operation #tmp CB03_Core = #Z CB03_Core
scoreboard players operation #tmp CB03_Core *= #yawSin CB03_Core
scoreboard players operation #X CB03_Core += #tmp CB03_Core
scoreboard players operation #tmp CB03_Core = #vexX CB03_Core
scoreboard players operation #tmp CB03_Core *= #yawSin CB03_Core
scoreboard players operation #Z CB03_Core *= #yawCos CB03_Core
scoreboard players operation #Z CB03_Core -= #tmp CB03_Core
scoreboard players operation #X CB03_Core /= #10000 CB03_Core
scoreboard players operation #Y CB03_Core /= #10000 CB03_Core
scoreboard players operation #Z CB03_Core /= #10000 CB03_Core
scoreboard players operation #baseXC CB03_Core = #baseX CB03_Core
scoreboard players operation #baseYC CB03_Core = #baseY CB03_Core
scoreboard players operation #baseZC CB03_Core = #baseZ CB03_Core
scoreboard players operation #baseXC CB03_Core += #X CB03_Core
scoreboard players operation #baseYC CB03_Core += #Y CB03_Core
scoreboard players operation #baseZC CB03_Core += #Z CB03_Core
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #baseXC CB03_Core
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #baseYC CB03_Core
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #baseZC CB03_Core
execute if score #rotate-direction CB03_Core matches 1 if entity @s[tag=!chenbr_shapes_util-temp] run function chenbr_shapes_util:core/master/rotate/direction