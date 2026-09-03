data remove storage glm:utils/data/get output
data modify storage glm:utils/data/get success set value false

function glm:utils/data/get/init.macro with storage glm:utils/data/get

data remove storage glm:utils/data/get target
data remove storage glm:utils/data/get key