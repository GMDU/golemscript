function glm:interpreter/evaluate/binary_operation/operations/maths/subtract

data modify storage glm:interpreter evaluate.assign.name set from storage glm:interpreter evaluate.stack[-1].a_original.value
data modify storage glm:interpreter evaluate.assign.value set from storage glm:interpreter evaluate.operation.result

function glm:interpreter/evaluate/binary_operation/operations/assign/set