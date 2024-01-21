execute store result score $flat_depth bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].metadata.stack[-1].depth
data modify storage glm:interpreter evaluate.stack[-1].metadata.current set from storage glm:interpreter evaluate.stack[-1].metadata.stack[-1].value[0]
data remove storage glm:interpreter evaluate.stack[-1].metadata.stack[-1].value[0]

execute unless data storage glm:interpreter evaluate.stack[-1].metadata.current{type:"literal",variant:"array"} run data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter evaluate.stack[-1].metadata.current
execute if data storage glm:interpreter evaluate.stack[-1].metadata.current{type:"literal",variant:"array"} run function glm:interpreter/evaluate/function/builtin/flat/array

data remove storage glm:interpreter evaluate.stack[-1].metadata.current
execute unless data storage glm:interpreter evaluate.stack[-1].metadata.stack[-1].value[] run data remove storage glm:interpreter evaluate.stack[-1].metadata.stack[-1]
execute if data storage glm:interpreter evaluate.stack[-1].metadata.stack[-1] run function glm:interpreter/evaluate/function/builtin/flat/iterate