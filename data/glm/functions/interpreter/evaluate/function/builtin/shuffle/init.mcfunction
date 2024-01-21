function glm:interpreter/evaluate/function/builtin/map/validation/arg0
execute if data storage glm:interpreter error run return -1

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: []}

execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/shuffle/iterate