execute unless data storage glm:interpreter evaluate.stack[-1].args[1] run return -1
data modify storage glm:interpreter temp.function.arg set from storage glm:interpreter evaluate.stack[-1].args[1]
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"string"} run return -1

data modify storage glm:interpreter error set value '{"text":"RuntimeError: Invalid second argument in function \'join\', expected type \'string\'."}'