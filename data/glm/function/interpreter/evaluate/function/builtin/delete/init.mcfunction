data modify storage glm:interpreter temp.variant set from storage glm:api/interpreter/function execute.args[0].variant
data modify storage glm:api/interpreter/function execute.return set from storage glm:api/interpreter/function execute.args[0]

execute if data storage glm:interpreter temp{variant:"string"} run function glm:interpreter/evaluate/function/builtin/delete/array with storage glm:api/interpreter/function execute.args[1]
execute if data storage glm:interpreter temp{variant:"array"} run function glm:interpreter/evaluate/function/builtin/delete/array with storage glm:api/interpreter/function execute.args[1]
execute if data storage glm:interpreter temp{variant:"object"} run function glm:interpreter/evaluate/function/builtin/delete/object with storage glm:api/interpreter/function execute.args[1]
