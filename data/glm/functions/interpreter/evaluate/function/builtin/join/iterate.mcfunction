data modify storage glm:interpreter utils.stringify.target set from storage glm:interpreter evaluate.stack[-1].args[0].value[0]
data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]

function glm:interpreter/utils/stringify/init

data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter utils.stringify.result[]
execute if data storage glm:interpreter evaluate.stack[-1].args[1] if data storage glm:interpreter evaluate.stack[-1].args[0].value[0] run data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter evaluate.stack[-1].args[1].value[]

execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/join/iterate