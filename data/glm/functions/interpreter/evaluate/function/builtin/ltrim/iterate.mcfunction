data modify storage moxlib:api/string/ascii/encode target set from storage glm:api/interpreter/function execute.return.value[0]

function moxlib:api/string/ascii/encode
execute store result score $char glm.interpreter run data get storage moxlib:api/string/ascii/encode output

execute if score $char glm.interpreter matches 33..126 run return -1

data remove storage glm:api/interpreter/function execute.return.value[0]
execute if data storage glm:api/interpreter/function execute.return.value[] run function glm:interpreter/evaluate/function/builtin/ltrim/iterate