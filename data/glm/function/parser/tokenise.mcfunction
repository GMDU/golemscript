data modify storage glm:utils/string/to_array target set from storage glm:parser tokenise.target[0]
data remove storage glm:parser tokenise.target[0]
function glm:utils/string/to_array

data modify storage glm:utils/string/to_array output append value "\n"
data modify storage glm:parser tokenise.output append from storage glm:utils/string/to_array output[]
execute if data storage glm:parser tokenise.target[] run function glm:parser/tokenise