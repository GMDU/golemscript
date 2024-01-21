data modify storage glm:interpreter temp.variant set from storage glm:interpreter evaluate.stack[-1].args[0].variant
data modify storage glm:api/interpreter/function execute.return set from storage glm:interpreter evaluate.stack[-1].args[0]


execute if data storage glm:interpreter temp{variant:"string"} run function glm:interpreter/evaluate/function/builtin/set/string with storage glm:interpreter evaluate.stack[-1].args[1]
execute if data storage glm:interpreter temp{variant:"array"} run function glm:interpreter/evaluate/function/builtin/set/array with storage glm:interpreter evaluate.stack[-1].args[1]
execute if data storage glm:interpreter temp{variant:"object"} run function glm:interpreter/evaluate/function/builtin/set/object with storage glm:interpreter evaluate.stack[-1].args[1]
