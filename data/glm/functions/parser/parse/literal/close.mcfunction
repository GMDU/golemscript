function glm:parser/close/check

execute if data storage glm:parser stack[-1].metadata.close{closed:true} run data modify storage glm:parser close set value true

data modify storage glm:parser current.consumed set value true

execute unless data storage glm:parser stack[-1].metadata.close{closed:true} unless data storage glm:parser current{value:" "} run data modify storage glm:parser raise set value '"Error closing literal."'
