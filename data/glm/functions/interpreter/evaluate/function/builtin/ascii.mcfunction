data modify storage moxlib:api/string/ascii/encode target set from storage glm:api/interpreter/function execute.args[0].value[0]
function moxlib:api/string/ascii/encode
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
data modify storage glm:api/interpreter/function execute.return.value set from storage moxlib:api/string/ascii/encode output
