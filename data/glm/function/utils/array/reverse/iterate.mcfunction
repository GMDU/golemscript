data modify storage glm:utils/array/reverse output append from storage glm:utils/array/reverse target[-1]
data remove storage glm:utils/array/reverse target[-1]

execute if data storage glm:utils/array/reverse target[] run function glm:utils/array/reverse/iterate