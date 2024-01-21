function glm:interpreter/evaluate/function/builtin/flat/validation/arg0
function glm:interpreter/evaluate/function/builtin/flat/validation/arg1
execute if data storage glm:interpreter error run return -1

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: []}

data modify storage glm:interpreter evaluate.stack[-1].metadata.stack set value [{depth: 1}]
data modify storage glm:interpreter evaluate.stack[-1].metadata.stack[-1].value set from storage glm:interpreter evaluate.stack[-1].args[0].value

execute if data storage glm:interpreter evaluate.stack[-1].args[1] run data modify storage glm:interpreter evaluate.stack[-1].metadata.stack[-1].depth set from storage glm:interpreter evaluate.stack[-1].args[1].value

function glm:interpreter/evaluate/function/builtin/flat/iterate

execute unless data storage glm:interpreter evaluate.stack[-1].args[0].value[] run data modify storage glm:api/interpreter/function execute.return set from storage glm:interpreter evaluate.stack[-1].metadata.return