function glm:interpreter/evaluate/function/builtin/slice/validation/arg0
function glm:interpreter/evaluate/function/builtin/slice/validation/arg1
function glm:interpreter/evaluate/function/builtin/slice/validation/arg2

execute if data storage glm:interpreter error run return -1

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: []}
data modify storage glm:api/interpreter/function execute.return.variant set from storage glm:api/interpreter/function execute.metadata.type

data modify storage glm:utils/array/slice target set from storage glm:api/interpreter/function execute.args[0].value
data modify storage glm:utils/array/slice start set from storage glm:api/interpreter/function execute.args[1].value

execute if data storage glm:api/interpreter/function execute.args[2] run function glm:interpreter/evaluate/function/builtin/slice/end

function glm:utils/array/slice

execute unless data storage glm:utils/array/slice {success:true} run return -1

data modify storage glm:api/interpreter/function execute.return.value set from storage glm:utils/array/slice output