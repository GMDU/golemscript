data modify storage moxlib:api/string/filter target set from storage glm:parser stack[-1].metadata.close.value
data modify storage moxlib:api/string/filter key set from storage glm:parser current.value
function moxlib:api/string/filter

execute if data storage moxlib:api/string/filter {output:false} run data modify storage glm:parser stack[-1].metadata.close.closed set value true