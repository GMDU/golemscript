data modify storage glm:parser temp.expression set from storage glm:parser stack[-1].value[0]
data remove storage glm:parser stack[-1]
data modify storage glm:parser stack append from storage glm:parser temp.expression