data remove storage glm:parser parsed.metadata
execute unless data storage glm:parser parsed{type:"meta",variant:"undefined"} run data modify storage glm:parser stack[-1].args append from storage glm:parser parsed
execute if data storage glm:parser current{value:")"} run data modify storage glm:parser stack[-1].metadata.status set value "closed"
data modify storage glm:parser current.consumed set value true