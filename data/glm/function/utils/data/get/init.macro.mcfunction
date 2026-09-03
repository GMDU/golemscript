data remove storage glm:utils/data/get output
data modify storage glm:utils/data/get success set value false

data modify storage glm:utils/data/get temp.array set value []
$data modify storage glm:utils/data/get temp.array append from storage glm:utils/data/get target[$(key)]

function glm:utils/data/get/iterate