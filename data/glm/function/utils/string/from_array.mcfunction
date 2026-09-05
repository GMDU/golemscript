data modify storage glm:utils/string/from_array output set value ""

execute if data storage glm:utils/string/from_array target[] run function glm:utils/string/from_array/iterate

data remove storage glm:utils/string/from_array target