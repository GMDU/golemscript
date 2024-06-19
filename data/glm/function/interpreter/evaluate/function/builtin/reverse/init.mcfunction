function glm:interpreter/evaluate/function/builtin/reverse/validation/arg0
execute if data storage glm:interpreter error run return -1

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: []}
data modify storage glm:api/interpreter/function execute.return.variant set from storage glm:api/interpreter/function execute.metadata.type

data modify storage moxlib:api/data/array/reverse target set from storage glm:api/interpreter/function execute.args[0].value
function moxlib:api/data/array/reverse

data modify storage glm:api/interpreter/function execute.return.value set from storage moxlib:api/data/array/reverse output