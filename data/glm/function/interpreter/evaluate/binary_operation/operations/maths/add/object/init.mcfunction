execute unless data storage glm:interpreter evaluate.stack[-1].b{type:"literal",variant:"object"} run data modify storage glm:interpreter error set value '["TypeError: Literal object cannot be coerced to ",{"storage":"glm:interpreter","nbt":"evaluate.stack[-1].b.variant"},"."'
execute unless data storage glm:interpreter evaluate.stack[-1].b{type:"literal",variant:"object"} run return -1

data modify storage glm:interpreter evaluate.operation.result set from storage glm:interpreter evaluate.stack[-1].a
function glm:interpreter/evaluate/binary_operation/operations/maths/add/object/iterate