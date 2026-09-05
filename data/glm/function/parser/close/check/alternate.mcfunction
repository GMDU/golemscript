data modify storage glm:utils/string/filter target set from storage glm:parser stack[-1].metadata.close.value
data modify storage glm:utils/string/filter key set from storage glm:parser current.value
function glm:utils/string/filter

execute if data storage glm:utils/string/filter {output:false} run data modify storage glm:parser stack[-1].metadata.close.closed set value true