data modify storage glm:parser stack[-1].metadata.status set value "closed"

execute unless data storage glm:parser current{value:"/"} run return -1

data modify storage glm:parser stack[-1].metadata.status set value "open"
data modify storage glm:parser stack[-1].id append value "/"
data modify storage glm:parser current.consumed set value true