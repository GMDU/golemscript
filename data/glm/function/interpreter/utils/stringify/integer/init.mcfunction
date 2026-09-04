$data modify storage glm:utils/string/to_array target set value "$(value)"
function glm:utils/string/to_array
data modify storage glm:interpreter utils.stringify.result append from storage glm:utils/string/to_array output[]