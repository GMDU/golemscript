data modify storage glm:interpreter utils.stringify.target set from storage glm:api/interpreter/function execute.args[0].value[0]
data remove storage glm:api/interpreter/function execute.args[0].value[0]

function glm:interpreter/utils/stringify/init

data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter utils.stringify.result[]
execute if data storage glm:api/interpreter/function execute.args[1] if data storage glm:api/interpreter/function execute.args[0].value[0] run data modify storage glm:api/interpreter/function execute.return.value append from storage glm:api/interpreter/function execute.args[1].value[]

execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/join/iterate