execute unless data storage glm:parser current{value:"("} run data modify storage glm:parser stack append value {type:"literal",variant:"alphanumeric"}
execute unless data storage glm:parser current{value:"("} run return -1

data modify storage glm:parser current.consumed set value true
data modify storage glm:parser stack[-1].metadata.status set value "parameters"
