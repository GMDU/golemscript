data modify storage glm:interpreter utils.stringify.target set from storage glm:interpreter evaluate.stack[-1].args[0]

function glm:interpreter/utils/stringify/init

data modify storage glm:api/interpreter stdio.out append value {type: "literal", variant: "string", value: []}
data modify storage glm:api/interpreter stdio.out[-1].value set from storage glm:interpreter utils.stringify.result
data modify storage glm:api/interpreter/function execute.return set value {type:"undefined",value: false}