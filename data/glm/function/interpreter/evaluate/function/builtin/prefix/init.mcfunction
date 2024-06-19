data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "boolean", value: false}

execute if data storage glm:api/interpreter/function execute.args[1].value[] run function glm:interpreter/evaluate/function/builtin/prefix/iterate

execute unless data storage glm:api/interpreter/function execute.args[1].value[] run data modify storage glm:api/interpreter/function execute.return.value set value true
