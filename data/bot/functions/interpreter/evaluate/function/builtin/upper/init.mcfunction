data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}

execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/upper/iterate