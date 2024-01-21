data modify storage glm:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage glm:interpreter evaluate.next.value set from storage glm:interpreter evaluate.stack[-1].args[1]

execute if data storage glm:interpreter evaluate.stack[-1].metadata{type:"object"} run function glm:interpreter/evaluate/function/builtin/map/args/object
execute if data storage glm:interpreter evaluate.stack[-1].metadata{type:"array"} run function glm:interpreter/evaluate/function/builtin/map/args/array
execute if data storage glm:interpreter evaluate.stack[-1].metadata{type:"string"} run function glm:interpreter/evaluate/function/builtin/map/args/string

data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]