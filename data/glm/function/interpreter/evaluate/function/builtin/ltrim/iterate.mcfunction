data modify storage glm:utils ascii.target.value set from storage glm:api/interpreter/function execute.return.value[0]

function glm:interpreter/utils/ascii/lookup
execute store result score $char glm.interpreter run data get storage glm:utils ascii.output.id

execute if score $char glm.interpreter matches 33..126 run return -1

data remove storage glm:api/interpreter/function execute.return.value[0]
execute if data storage glm:api/interpreter/function execute.return.value[] run function glm:interpreter/evaluate/function/builtin/ltrim/iterate