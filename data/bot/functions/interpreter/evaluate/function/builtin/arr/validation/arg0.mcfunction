data modify storage glm:interpreter temp.function.arg set from storage glm:interpreter evaluate.stack[-1].args[0]
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"array"} run data modify storage glm:interpreter evaluate.stack[-1].metadata.type set value "array"
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"string"} run data modify storage glm:interpreter evaluate.stack[-1].metadata.type set value "string"
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"object"} run data modify storage glm:interpreter evaluate.stack[-1].metadata.type set value "object"

execute if data storage glm:interpreter evaluate.stack[-1].metadata.type run return -1

data modify storage glm:interpreter error set value '{"text": "RuntimeError: Invalid first argument in function \'arr\', expected type \'array\', \'string\' or \'object\'."}'