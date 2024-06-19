data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "evaluating_a"

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].a
data modify storage glm:interpreter evaluate.stack[-1].a_original set from storage glm:interpreter evaluate.stack[-1].a
