function glm:interpreter/evaluate/function/builtin/map/validation/arg0
function glm:interpreter/evaluate/function/builtin/map/validation/arg1
execute if data storage glm:interpreter error run return -1

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: []}
data modify storage glm:interpreter evaluate.stack[-1].metadata.return set value {type: "literal", variant: "array", value: []}