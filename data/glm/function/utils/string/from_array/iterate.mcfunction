data modify storage glm:utils/string/concatenate target set from storage glm:utils/string/from_array output
data modify storage glm:utils/string/concatenate suffix set from storage glm:utils/string/from_array target[0]
data remove storage glm:utils/string/from_array target[0]

function glm:utils/string/concatenate

data modify storage glm:utils/string/from_array output set from storage glm:utils/string/concatenate output

execute if data storage glm:utils/string/from_array target[] run function glm:utils/string/from_array/iterate