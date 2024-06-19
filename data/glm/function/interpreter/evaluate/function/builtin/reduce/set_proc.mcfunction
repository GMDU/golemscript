data modify storage glm:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage glm:interpreter evaluate.next.value set from storage glm:api/interpreter/function execute.args[2]

execute if data storage glm:api/interpreter/function execute.metadata{type:"string"} run function glm:interpreter/evaluate/function/builtin/reduce/args/string
execute if data storage glm:api/interpreter/function execute.metadata{type:"array"} run function glm:interpreter/evaluate/function/builtin/reduce/args/array
execute if data storage glm:api/interpreter/function execute.metadata{type:"object"} run function glm:interpreter/evaluate/function/builtin/reduce/args/object

data modify storage glm:interpreter evaluate.next.args append from storage glm:api/interpreter/function execute.metadata.return

data remove storage glm:api/interpreter/function execute.args[0].value[0]
