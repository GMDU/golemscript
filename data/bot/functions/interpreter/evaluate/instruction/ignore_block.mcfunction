
data modify storage glm:interpreter evaluate.stack[-1].evaluated_args append from storage glm:interpreter evaluate.next
data remove storage glm:interpreter evaluate.next

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].metadata.stack[0]
data remove storage glm:interpreter evaluate.stack[-1].metadata.stack[0]

execute if data storage glm:interpreter evaluate.next{type:"block"} run function glm:interpreter/evaluate/instruction/ignore_block