execute unless data storage glm:api/interpreter/function execute.args[1].value[] run function glm:interpreter/evaluate/function/builtin/arr/init
execute if data storage glm:api/interpreter/function execute.return run return -1

data remove storage glm:interpreter temp.split
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: [{type: "literal", variant: "string", value: []}]}
data modify storage glm:interpreter temp.split.separator set from storage glm:api/interpreter/function execute.args[1].value

execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/split/iterate

data modify storage glm:api/interpreter/function execute.return.value[-1].value append from storage glm:interpreter temp.split.checking[]
