data modify storage glm:interpreter evaluate.stack[-1].a set from storage glm:interpreter evaluate.result
data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "evaluating_b"

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].b
data modify storage glm:interpreter evaluate.stack[-1].b_original set from storage glm:interpreter evaluate.stack[-1].b