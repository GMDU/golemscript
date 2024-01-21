data modify storage glm:parser temp.variant set value true
data modify storage glm:parser temp.value set from storage glm:parser stack[-1].value
data remove storage glm:parser stack[-1]
data modify storage glm:parser stack append value {type:"literal",variant:"resource"}
data modify storage glm:parser stack[-1].namespace set from storage glm:parser temp.value