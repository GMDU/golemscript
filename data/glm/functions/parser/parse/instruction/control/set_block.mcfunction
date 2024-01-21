data modify storage glm:parser stack[-1].metadata.status set value "block"
data modify storage glm:parser stack append value {type:"block",metadata:{close:{type:"end"}}}