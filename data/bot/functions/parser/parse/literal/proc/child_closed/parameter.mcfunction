execute if data storage glm:parser parsed.value[] run data modify storage glm:parser stack[-1].args append from storage glm:parser parsed.value
execute if data storage glm:parser current{value:")"} run data modify storage glm:parser stack[-1].metadata.status set value "value"
data modify storage glm:parser current.consumed set value true