execute unless data storage glm:interpreter evaluate.stack[-1].metadata.stack[] run return -1

data remove storage glm:interpreter evaluate.stack[-1].metadata.stack[0]
data modify storage glm:interpreter evaluate.stack[-1].evaluated_args append from storage glm:interpreter evaluate.result

execute unless data storage glm:interpreter evaluate.stack[-1].metadata.stack[] run data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "execute"

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].metadata.stack[0]