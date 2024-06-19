data modify storage glm:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage glm:interpreter evaluate.next.value set from storage glm:api/interpreter/function execute.args[1]

execute if data storage glm:api/interpreter/function execute.metadata{type:"object"} run function glm:interpreter/evaluate/function/builtin/map/args/object
execute if data storage glm:api/interpreter/function execute.metadata{type:"array"} run function glm:interpreter/evaluate/function/builtin/map/args/array
execute if data storage glm:api/interpreter/function execute.metadata{type:"string"} run function glm:interpreter/evaluate/function/builtin/map/args/string

data remove storage glm:api/interpreter/function execute.args[0].value[0]