execute if data storage glm:parser stack[-2] run data modify storage glm:parser close set value true
execute unless data storage glm:parser stack[-2] run data modify storage glm:parser output set from storage glm:parser stack[-1]
execute unless data storage glm:parser stack[-2] run data remove storage glm:parser output.metadata
data modify storage glm:parser current.consumed set value true