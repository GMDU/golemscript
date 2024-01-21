data remove storage glm:parser parsed.metadata

data modify storage glm:parser stack[-1].id set from storage glm:parser parsed.value
data modify storage glm:parser stack[-1].parameters set from storage glm:parser parsed.parameters

data modify storage glm:parser stack[-1].metadata.status set value "closed"