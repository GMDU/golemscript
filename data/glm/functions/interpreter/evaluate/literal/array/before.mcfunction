data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "open"
data modify storage glm:interpreter evaluate.stack[-1].original_value set from storage glm:interpreter evaluate.stack[-1].value
data modify storage glm:interpreter evaluate.stack[-1].value set value []
data modify storage glm:interpreter evaluate.stack[-1].metadata.stack set from storage glm:interpreter evaluate.stack[-1].original_value

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].metadata.stack[0]