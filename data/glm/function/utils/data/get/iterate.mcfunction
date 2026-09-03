data modify storage glm:utils/data/get temp.current set from storage glm:utils/data/get temp.array[0]
data remove storage glm:utils/data/get temp.array[0]

data modify storage glm:utils/data/compare target set from storage glm:utils/data/get temp.current
data modify storage glm:utils/data/compare key set from storage glm:utils/data/get key

function glm:utils/data/compare

execute if data storage glm:utils/data/compare {output: true} run return run function glm:utils/data/get/return
execute if data storage glm:utils/data/get temp.array[] run function glm:utils/data/get/iterate