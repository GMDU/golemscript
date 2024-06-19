data modify storage glm:interpreter temp.function.arg set from storage glm:api/interpreter/function execute.args[0]
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"array"} run data modify storage glm:api/interpreter/function execute.metadata.type set value "array"
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"string"} run data modify storage glm:api/interpreter/function execute.metadata.type set value "string"

execute if data storage glm:api/interpreter/function execute.metadata.type run return -1

data modify storage glm:interpreter error set value '{"text": "RuntimeError: Invalid first argument in function \'slice\', expected type \'array\' or \'string\'."}'