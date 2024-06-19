data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "open"
data modify storage glm:interpreter evaluate.stack[-1].evaluated_args set value []
data modify storage glm:interpreter evaluate.stack[-1].metadata.stack set from storage glm:interpreter evaluate.stack[-1].args

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].metadata.stack[0]

execute unless data storage glm:interpreter evaluate.stack[-1].args[] run data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "execute"