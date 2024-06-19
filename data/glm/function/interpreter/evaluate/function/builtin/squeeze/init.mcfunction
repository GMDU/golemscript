data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}

data remove storage glm:interpreter temp.last

execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/squeeze/iterate