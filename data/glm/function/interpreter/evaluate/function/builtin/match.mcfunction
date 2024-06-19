data modify storage regex:api/match pattern set from storage glm:api/interpreter/function execute.args[0].value
data modify storage regex:api/match target set from storage glm:api/interpreter/function execute.args[1].value
data modify storage regex:api/match flags set value {process_target: false, parse: false}
function regex:api/match

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage glm:api/interpreter/function execute.return.value set from storage regex:api/match output
