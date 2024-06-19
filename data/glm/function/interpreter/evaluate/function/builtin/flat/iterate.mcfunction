execute store result score $flat_depth glm.interpreter run data get storage glm:api/interpreter/function execute.metadata.stack[-1].depth
data modify storage glm:api/interpreter/function execute.metadata.current set from storage glm:api/interpreter/function execute.metadata.stack[-1].value[0]
data remove storage glm:api/interpreter/function execute.metadata.stack[-1].value[0]

execute unless data storage glm:api/interpreter/function execute.metadata.current{type:"literal",variant:"array"} run data modify storage glm:api/interpreter/function execute.return.value append from storage glm:api/interpreter/function execute.metadata.current
execute if data storage glm:api/interpreter/function execute.metadata.current{type:"literal",variant:"array"} run function glm:interpreter/evaluate/function/builtin/flat/array

data remove storage glm:api/interpreter/function execute.metadata.current
execute unless data storage glm:api/interpreter/function execute.metadata.stack[-1].value[] run data remove storage glm:api/interpreter/function execute.metadata.stack[-1]
execute if data storage glm:api/interpreter/function execute.metadata.stack[-1] run function glm:interpreter/evaluate/function/builtin/flat/iterate