# RawInput:    2が中心,視線方向不問
# RawDistance: 360/count
# RawOutput:   召喚Entityは外側への視線方向を持つ
# public static Entity drawCircle(Entity 0-a-17a7-3-2, int $radius, int $count, int $start) {

execute if score $ellipse-modifier Input matches 0 run scoreboard players set $ellipse-modifier Input 100
execute unless score $ellipse-modifier Input = $ellipse-modifier Input run scoreboard players set $ellipse-modifier Input 100

scoreboard players operation #particle-distanceC Core = $start Input
execute unless score $ellipse-modifier Input matches 100 run scoreboard players operation #particle-distanceC Core -= $ellipse-rotate Input
execute unless score $ellipse-modifier Input matches 100 run scoreboard players operation #particle-distanceC Core %= #3600 Core
scoreboard players operation #particle-distanceC Core *= #1000 Core
tellraw @a [{"text":"#particle-distanceC: "},{"score":{"objective":"Core","name":"#particle-distanceC"}}]
execute as 0-a-17a7-3-3 at @s rotated 0 0 run function chenbr_shapes_util:core/circle/spin/22

scoreboard players set #particle-distance Core 3600000
scoreboard players operation #particle-distance Core /= $count Input

execute store result score #center-X Core run data get entity 0-a-17a7-3-2 Pos[0] 100
execute store result score #center-Y Core run data get entity 0-a-17a7-3-2 Pos[1] 100
execute store result score #center-Z Core run data get entity 0-a-17a7-3-2 Pos[2] 100

scoreboard players operation #particle-distanceC Core = #particle-distance Core
scoreboard players set #tp-count Core 0
execute as 0-a-17a7-3-3 at @s run function chenbr_shapes_util:core/circle/recursive