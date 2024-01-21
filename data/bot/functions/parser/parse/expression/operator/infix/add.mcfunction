data modify storage glm:parser stack[-1].value append from storage glm:parser stack[-1].metadata.operator
data remove storage glm:parser stack[-1].metadata.registry
data remove storage glm:parser stack[-1].metadata.operator
data modify storage glm:parser stack[-1].metadata merge value {status:"prefix",no_matches:false}