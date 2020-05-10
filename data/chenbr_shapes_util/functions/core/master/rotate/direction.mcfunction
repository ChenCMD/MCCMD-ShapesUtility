execute store result score #vexX Core run data get entity @s Pos[0] 10000
execute store result score #vexY Core run data get entity @s Pos[2] 10000
scoreboard players operation #vexZ Core = #distanceC Core

scoreboard players operation #Y Core = #vexY Core
scoreboard players operation #Y Core *= #pitchCos Core
scoreboard players operation #tmp Core = #vexZ Core
scoreboard players operation #tmp Core *= #pitchSin Core
scoreboard players operation #Y Core -= #tmp Core

scoreboard players operation #Z Core = #vexY Core
scoreboard players operation #Z Core *= #pitchSin Core
scoreboard players operation #tmp Core = #vexZ Core
scoreboard players operation #tmp Core *= #pitchCos Core
scoreboard players operation #Z Core += #tmp Core
scoreboard players operation #Z Core /= #10000 Core

scoreboard players operation #X Core = #vexX Core
scoreboard players operation #X Core *= #yawCos Core
scoreboard players operation #tmp Core = #Z Core
scoreboard players operation #tmp Core *= #yawSin Core
scoreboard players operation #X Core += #tmp Core

scoreboard players operation #tmp Core = #vexX Core
scoreboard players operation #tmp Core *= #yawSin Core
scoreboard players operation #Z Core *= #yawCos Core
scoreboard players operation #Z Core -= #tmp Core

scoreboard players operation #X Core /= #10000 Core
scoreboard players operation #Y Core /= #10000 Core
scoreboard players operation #Z Core /= #10000 Core

scoreboard players operation #baseXC Core = #baseX Core
scoreboard players operation #baseYC Core = #baseY Core
scoreboard players operation #baseZC Core = #baseZ Core

scoreboard players operation #baseXC Core += #X Core
scoreboard players operation #baseYC Core += #Y Core
scoreboard players operation #baseZC Core += #Z Core

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #baseXC Core
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #baseYC Core
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #baseZC Core