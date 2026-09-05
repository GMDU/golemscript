data modify storage glm:utils/data/set temp.current set from storage glm:utils/data/set target[0]
data remove storage glm:utils/data/set target[0]

data modify storage glm:utils/data/compare target set from storage glm:utils/data/set temp.current
data modify storage glm:utils/data/compare key set from storage glm:utils/data/set key

function glm:utils/data/compare

execute if data storage glm:utils/data/compare {output: true} run return run function glm:utils/data/set/return
data modify storage glm:utils/data/set output append from storage glm:utils/data/set temp.current
execute if data storage glm:utils/data/set target[] run return run function glm:utils/data/set/iterate

data modify storage glm:utils/data/set output append from storage glm:utils/data/set key
execute store success storage glm:utils/data/set success byte 1 run data modify storage glm:utils/data/set output[-1] merge from storage glm:utils/data/set data