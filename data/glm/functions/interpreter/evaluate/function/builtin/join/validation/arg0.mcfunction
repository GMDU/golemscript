data modify storage glm:interpreter temp.function.arg set from storage glm:interpreter evaluate.stack[-1].args[0]
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"array"} run return -1

data modify storage glm:interpreter error set value '{"text": "RuntimeError: Invalid first argument in function \'join\', expected type \'array\'."}'