data modify storage glm:interpreter evaluate.operation.result set from storage glm:interpreter evaluate.stack[-1].a
data modify storage glm:interpreter evaluate.operation.result.value append from storage glm:interpreter evaluate.stack[-1].b

execute unless data storage glm:interpreter evaluate.stack[-1].a_original{type:"literal",variant:"variable"} run return -1

data modify storage glm:interpreter evaluate.assign.name set from storage glm:interpreter evaluate.stack[-1].a_original.value
data modify storage glm:interpreter evaluate.assign.value set from storage glm:interpreter evaluate.operation.result

function glm:interpreter/evaluate/binary_operation/operations/assign/set