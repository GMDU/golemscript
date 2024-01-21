data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "boolean", value: false}

execute if data storage glm:interpreter evaluate.stack[-1].args[1].value[] run function glm:interpreter/evaluate/function/builtin/suffix/iterate

execute unless data storage glm:interpreter evaluate.stack[-1].args[1].value[] run data modify storage glm:api/interpreter/function execute.return.value set value true
