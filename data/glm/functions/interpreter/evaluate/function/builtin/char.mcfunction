data modify storage moxlib:api/string/ascii/decode target set from storage glm:api/interpreter/function execute.args[0].value
function moxlib:api/string/ascii/decode
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage glm:api/interpreter/function execute.return.value append from storage moxlib:api/string/ascii/decode output
