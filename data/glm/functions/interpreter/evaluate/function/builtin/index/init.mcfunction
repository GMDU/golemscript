function glm:interpreter/evaluate/function/builtin/index/validation/arg0

data modify storage glm:api/interpreter/function execute.return set value {type:"literal",variant:"integer",value:-1}
execute unless data storage glm:api/interpreter/function execute.args[0].value[] run return -1

scoreboard players set $index glm.interpreter 0
execute if data storage glm:api/interpreter/function execute.metadata{type: "array"} run function glm:interpreter/evaluate/function/builtin/index/array/iterate
execute if data storage glm:api/interpreter/function execute.metadata{type: "string"} run function glm:interpreter/evaluate/function/builtin/index/string/init
