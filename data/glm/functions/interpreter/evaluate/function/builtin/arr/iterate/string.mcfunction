data modify storage glm:api/interpreter/function execute.return.value append value {type: "literal", variant: "string", value: []}
data modify storage glm:api/interpreter/function execute.return.value[-1].value append from storage glm:interpreter evaluate.stack[-1].args[0].value[0]

data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]
execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/arr/iterate/string