data modify storage moxlib:api/string/ascii/lookup target.value set from storage glm:api/interpreter/function execute.args[0].value[0]
function moxlib:api/string/ascii/lookup
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
execute store result storage glm:api/interpreter/function execute.return.value int 1 run data get storage moxlib:api/string/ascii/lookup output.id
