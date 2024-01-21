execute unless data storage glm:interpreter evaluate.stack[-1].metadata.stack[] run return -1

data modify storage glm:interpreter evaluate.stack[-1].value append from storage glm:interpreter evaluate.stack[-1].metadata.stack[0]
data modify storage glm:interpreter evaluate.stack[-1].value[-1].value set from storage glm:interpreter evaluate.result
data remove storage glm:interpreter evaluate.stack[-1].metadata.stack[0]

execute unless data storage glm:interpreter evaluate.stack[-1].metadata.stack[] run data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "closed"

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].metadata.stack[0].value