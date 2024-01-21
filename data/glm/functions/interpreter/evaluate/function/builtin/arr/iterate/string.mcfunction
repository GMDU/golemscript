data modify storage glm:api/interpreter/function execute.return.value append value {type: "literal", variant: "string", value: []}
data modify storage glm:api/interpreter/function execute.return.value[-1].value append from storage glm:api/interpreter/function execute.args[0].value[0]

data remove storage glm:api/interpreter/function execute.args[0].value[0]
execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/arr/iterate/string