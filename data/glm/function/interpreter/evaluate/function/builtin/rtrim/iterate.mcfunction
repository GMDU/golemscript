data modify storage moxlib:api/string/ascii/lookup target.value set from storage glm:api/interpreter/function execute.return.value[-1]

function moxlib:api/string/ascii/lookup
execute store result score $char glm.interpreter run data get storage moxlib:api/string/ascii/lookup output.id

execute if score $char glm.interpreter matches 33..126 run return -1

data remove storage glm:api/interpreter/function execute.return.value[-1]
execute if data storage glm:api/interpreter/function execute.return.value[] run function glm:interpreter/evaluate/function/builtin/rtrim/iterate