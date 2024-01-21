data modify storage glm:parser stack[-1].name set from storage glm:parser parsed.value
data modify storage glm:parser stack[-1].metadata.status set value "brackets"
execute unless data storage glm:parser current{value:"("} run data modify storage glm:parser current.consumed set value true