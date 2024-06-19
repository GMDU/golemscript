data modify storage glm:parser stack[-1].args append value {type:"literal",variant:"string"}
data modify storage glm:parser stack[-1].args[-1].value set from storage glm:parser parsed.value