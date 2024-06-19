data modify storage glm:interpreter temp.function.arg set from storage glm:api/interpreter/function execute.args[1]
execute if data storage glm:interpreter temp.function.arg{type:"literal", variant:"proc"} run return -1

data modify storage glm:interpreter error set value '{"text":"RuntimeError: Invalid second argument in function \'map\', expected type \'proc\'."}'