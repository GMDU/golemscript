data modify storage glm:parser temp.variant set value true
data modify storage glm:parser temp.value set from storage glm:parser stack[-1].value
data remove storage glm:parser stack[-1]
data modify storage glm:parser stack append value {type:"literal",variant:"function"}
data modify storage glm:parser stack[-1].name set from storage glm:parser temp.value