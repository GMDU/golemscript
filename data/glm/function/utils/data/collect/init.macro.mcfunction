data modify storage glm:utils/data/collect temp.array set value []

data modify storage glm:utils/data/collect output.remain set from storage glm:utils/data/collect target
$data remove storage glm:utils/data/collect output.remain[$(key)]
$data modify storage glm:utils/data/collect temp.array append from storage glm:utils/data/collect target[$(key)]

execute if data storage glm:utils/data/collect temp.array[] run function glm:utils/data/collect/iterate