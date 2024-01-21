function glm:interpreter/evaluate/function/builtin/obj/validation/arg0
execute if data storage glm:interpreter error run return -1

data remove storage glm:interpreter temp.args

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "object", value: []}

execute if data storage glm:api/interpreter/function execute.metadata{type: "object"} run data modify storage glm:api/interpreter/function execute.return.value set from storage glm:api/interpreter/function execute.args[0].value
execute if data storage glm:api/interpreter/function execute.metadata{type: "array"} if data storage glm:api/interpreter/function execute.args[0].value[0].value[] run function glm:interpreter/evaluate/function/builtin/obj/iterate