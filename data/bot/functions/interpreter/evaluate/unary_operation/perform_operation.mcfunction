data modify storage glm:interpreter evaluate.stack[-1].value set from storage glm:interpreter evaluate.result

data modify storage glm:interpreter evaluate.operation.current set from storage glm:interpreter evaluate.stack[-1].variant
execute store result score $value bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].value.value

data modify storage glm:interpreter evaluate.operation.result set value {type:"undefined",value: false}

execute if data storage glm:interpreter evaluate.operation{current:"negation"} run function glm:interpreter/evaluate/unary_operation/operations/negation
execute if data storage glm:interpreter evaluate.operation{current:"logical_not"} run function glm:interpreter/evaluate/unary_operation/operations/logical_not

data remove storage glm:interpreter evaluate.stack[-1]
data modify storage glm:interpreter evaluate.stack append from storage glm:interpreter evaluate.operation.result