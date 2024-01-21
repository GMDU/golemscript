data modify storage glm:parser stack[-1].metadata.status set value "closed"
data remove storage glm:parser parsed.metadata
data modify storage glm:parser stack[-1].value set from storage glm:parser parsed
