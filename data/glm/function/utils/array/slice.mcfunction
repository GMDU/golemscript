data modify storage glm:utils/array/slice success set value true
data modify storage glm:utils/array/slice output set value []

scoreboard players set $index glm.utils.array.slice 0
execute store result score $start glm.utils.array.slice run data get storage glm:utils/array/slice start
execute store result score $end glm.utils.array.slice run data get storage glm:utils/array/slice end

execute unless score $start glm.utils.array.slice matches 0.. run scoreboard players set $start glm.utils.array.slice 0
execute unless score $end glm.utils.array.slice matches 1.. unless data storage glm:utils/array/slice end run scoreboard players set $end glm.utils.array.slice 2147483647

execute if score $start glm.utils.array.slice > $end glm.utils.array.slice run data modify storage glm:utils/array/slice success set value false

execute if data storage glm:utils/array/slice {success: true} run function glm:utils/array/slice/iterate

data remove storage glm:utils/array/slice target
data remove storage glm:utils/array/slice start
data remove storage glm:utils/array/slice end