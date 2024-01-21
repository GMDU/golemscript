function glm:interpreter/evaluate/function/builtin/any/validation/arg0
function glm:interpreter/evaluate/function/builtin/any/validation/arg1
execute if data storage glm:interpreter error run return -1

data modify storage glm:interpreter evaluate.stack[-1].metadata.return set value {type: "literal", variant: "boolean", value: false}
