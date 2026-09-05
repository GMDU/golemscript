data modify storage glm:utils/data/set output set value []
data modify storage glm:utils/data/set success set value false

function glm:utils/data/set/iterate

data remove storage glm:utils/data/set target
data remove storage glm:utils/data/set data
data remove storage glm:utils/data/set key