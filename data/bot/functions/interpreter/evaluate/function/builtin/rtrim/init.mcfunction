data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter evaluate.stack[-1].args[0].value[]

execute if data storage glm:api/interpreter/function execute.return.value[] run function glm:interpreter/evaluate/function/builtin/rtrim/iterate
