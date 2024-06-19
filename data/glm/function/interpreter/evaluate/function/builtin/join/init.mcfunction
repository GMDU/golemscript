function glm:interpreter/evaluate/function/builtin/join/validation/arg0
function glm:interpreter/evaluate/function/builtin/join/validation/arg1

execute if data storage glm:interpreter error run return -1

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}

function glm:interpreter/evaluate/function/builtin/join/iterate