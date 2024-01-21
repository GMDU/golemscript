data modify storage moxlib:api/string/to_array target set from storage glm:parser tokenise.target[0]
data remove storage glm:parser tokenise.target[0]
function moxlib:api/string/to_array

data modify storage moxlib:api/string/to_array output append value "^n"
data modify storage glm:parser tokenise.output append from storage moxlib:api/string/to_array output[]
execute if data storage glm:parser tokenise.target[] run function glm:parser/tokenise