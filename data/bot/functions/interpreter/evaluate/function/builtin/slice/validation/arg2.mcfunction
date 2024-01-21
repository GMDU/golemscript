execute unless data storage glm:interpreter evaluate.stack[-1].args[2] run return -1
data modify storage glm:interpreter temp.function.arg set from storage glm:interpreter evaluate.stack[-1].args[2]
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"integer"} run return -1

data modify storage glm:interpreter error set value '{"text":"RuntimeError: Invalid third argument in function \'slice\', expected type \'integer\'."}'