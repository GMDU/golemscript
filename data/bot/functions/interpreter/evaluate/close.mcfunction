data modify storage glm:interpreter evaluate.result set from storage glm:interpreter evaluate.stack[-1]
data remove storage glm:interpreter evaluate.result.metadata
data remove storage glm:interpreter evaluate.result.parameters
data remove storage glm:interpreter evaluate.stack[-1]
data remove storage glm:interpreter evaluate.current