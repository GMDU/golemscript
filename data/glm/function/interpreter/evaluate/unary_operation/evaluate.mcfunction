data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "evaluated"
data modify storage glm:interpreter evaluate.stack[-1].value_original set from storage glm:interpreter evaluate.stack[-1].value

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].value