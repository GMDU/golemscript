data modify storage glm:parser stack[-1].metadata.status set value "closed"

data modify storage glm:utils/string/from_array target set from storage glm:parser stack[-1].value
function glm:utils/string/from_array

function glm:parser/parse/literal/integer/set_value.macro with storage glm:utils/string/from_array