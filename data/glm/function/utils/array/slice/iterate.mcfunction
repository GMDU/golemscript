execute if score $index glm.utils.array.slice >= $start glm.utils.array.slice if score $index glm.utils.array.slice < $end glm.utils.array.slice run data modify storage glm:utils/array/slice output append from storage glm:utils/array/slice target[0]
data remove storage glm:utils/array/slice target[0]

scoreboard players add $index glm.utils.array.slice 1

execute if score $index glm.utils.array.slice < $end glm.utils.array.slice if data storage glm:utils/array/slice target[] run function glm:utils/array/slice/iterate