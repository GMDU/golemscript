data modify storage glm:utils/data/set target set from storage glm:interpreter evaluate.operation.result.value
data modify storage glm:utils/data/set key.key set from storage glm:interpreter evaluate.stack[-1].b.value[0].key
data modify storage glm:utils/data/set data.value set from storage glm:interpreter evaluate.stack[-1].b.value[0].value
function glm:utils/data/set

data modify storage glm:interpreter evaluate.operation.result.value set from storage glm:utils/data/set output

data remove storage glm:interpreter evaluate.stack[-1].b.value[0]

execute if data storage glm:interpreter evaluate.stack[-1].b.value[] run function glm:interpreter/evaluate/binary_operation/operations/maths/add/object/iterate