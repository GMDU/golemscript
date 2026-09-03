data modify storage glm:utils/data/get temp.array set value []
$data modify storage glm:utils/data/get temp.array append from storage glm:utils/data/get target[$(key)]

function glm:utils/data/get/iterate