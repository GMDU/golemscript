data modify storage glm:utils/array/reverse output set value []

execute if data storage glm:utils/array/reverse target[] run function glm:utils/array/reverse/iterate

data remove storage glm:utils/array/reverse target