data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}

execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/lower/iterate