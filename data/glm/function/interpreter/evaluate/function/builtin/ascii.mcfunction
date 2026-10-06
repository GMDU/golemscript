data modify storage glm:utils ascii.target.value set from storage glm:api/interpreter/function execute.args[0].value[0]
function glm:interpreter/utils/ascii/lookup
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
execute store result storage glm:api/interpreter/function execute.return.value int 1 run data get storage glm:utils ascii.output.id
