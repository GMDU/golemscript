data modify storage glm:parser temp.instruction set from storage glm:parser stack[-1].instruction
data modify storage glm:parser temp.instruction.metadata.close set from storage glm:parser stack[-1].metadata.close

data modify storage glm:parser temp.replaced set value true
data remove storage glm:parser stack[-1]
data modify storage glm:parser stack append from storage glm:parser temp.instruction