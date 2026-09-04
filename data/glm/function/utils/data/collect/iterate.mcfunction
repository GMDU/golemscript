data modify storage glm:utils/data/collect temp.current set from storage glm:utils/data/collect temp.array[0]
data remove storage glm:utils/data/collect temp.array[0]

data modify storage glm:utils/data/compare target set from storage glm:utils/data/collect temp.current
data modify storage glm:utils/data/compare key set from storage glm:utils/data/collect key

function glm:utils/data/compare

execute if data storage glm:utils/data/compare {output: true} run function glm:utils/data/collect/match
execute unless data storage glm:utils/data/compare {output: true} run function glm:utils/data/collect/no_match

execute if data storage glm:utils/data/collect temp.array[] run function glm:utils/data/collect/iterate