execute unless data storage glm:parser current{value:" "} if data storage glm:parser current{value:"("} run data modify storage glm:parser stack[-1].metadata.status set value "parameters"
execute unless data storage glm:parser current{value:" "} unless data storage glm:parser current{value:"("} run data modify storage glm:parser raise set value "[Instruction - Func] Missing opening bracket for parameters."
data modify storage glm:parser current.consumed set value true