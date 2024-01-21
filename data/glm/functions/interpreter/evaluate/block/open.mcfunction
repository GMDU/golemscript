execute unless data storage glm:interpreter evaluate.stack[-1].value[] run data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "closed"
execute unless data storage glm:interpreter evaluate.stack[-1].value[] run return -1

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].value[0]
data remove storage glm:interpreter evaluate.stack[-1].value[0]