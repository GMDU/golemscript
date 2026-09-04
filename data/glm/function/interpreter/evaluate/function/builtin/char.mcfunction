data modify storage glm:utils ascii.target.id set from storage glm:api/interpreter/function execute.args[0].value
function glm:interpreter/utils/ascii/lookup
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage glm:api/interpreter/function execute.return.value append from storage glm:utils ascii.output.value
