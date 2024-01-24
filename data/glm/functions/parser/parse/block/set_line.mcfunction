data modify storage glm:parser temp.line set value {type:"line"}
data modify storage glm:parser temp.line.metadata.close set from storage glm:parser stack[-1].metadata.close

data modify storage glm:parser stack append from storage glm:parser temp.line