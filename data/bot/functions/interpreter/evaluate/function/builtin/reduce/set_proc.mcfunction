data modify storage glm:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage glm:interpreter evaluate.next.value set from storage glm:interpreter evaluate.stack[-1].args[2]

execute if data storage glm:interpreter evaluate.stack[-1].metadata{type:"string"} run function glm:interpreter/evaluate/function/builtin/reduce/args/string
execute if data storage glm:interpreter evaluate.stack[-1].metadata{type:"array"} run function glm:interpreter/evaluate/function/builtin/reduce/args/array
execute if data storage glm:interpreter evaluate.stack[-1].metadata{type:"object"} run function glm:interpreter/evaluate/function/builtin/reduce/args/object

data modify storage glm:interpreter evaluate.next.args append from storage glm:interpreter evaluate.stack[-1].metadata.return

data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]
