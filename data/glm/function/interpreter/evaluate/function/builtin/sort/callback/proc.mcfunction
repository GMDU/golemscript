data modify storage glm:utils sort.break set value true

data modify storage glm:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage glm:interpreter evaluate.next.value set from storage glm:api/interpreter/function execute.args[1]

data modify storage glm:interpreter evaluate.next.args append from storage glm:utils sort.stack[-1].target[0]
data modify storage glm:interpreter evaluate.next.args append from storage glm:utils sort.stack[-1].pivot

data modify storage glm:api/interpreter/function execute.metadata.sort set from storage glm:utils sort.stack