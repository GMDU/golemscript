data modify storage glm:interpreter evaluate.stack[-1].value set value true
execute unless data storage glm:interpreter evaluate.stack[-1].parameters[] run return -1

data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "parameters"
data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].parameters[0]
data remove storage glm:interpreter evaluate.stack[-1].parameters[0]